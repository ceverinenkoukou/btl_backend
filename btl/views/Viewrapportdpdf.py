from collections import defaultdict
from datetime import timedelta

from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

from btl.models import Vente, GainGoodie, GainPromotion, Entreprise, RemoteUser
from btl.permissions import IsPasswordChanged


class RapportPDFViewSet(viewsets.ViewSet):
    """
    GET /api/rapports-pdf/entreprise/?nom=<nom_commercial>

    Retourne toutes les données déjà jointes et fiables pour générer le rapport
    PDF côté frontend, SANS reconstruction approximative (plus de matching par
    fenêtre de temps en JS).

    ─── Comment les lignes sont liées entre elles (schéma réel) ─────────────

    Vente.degustation (OneToOne, nullable)
        → si une Vente est issue d'une dégustation, le lien est direct et
          fiable. Aucune supposition temporelle nécessaire.

    GainGoodie.degustation (OneToOne, nullable)
        → un gain de goodie peut être lié à LA MÊME dégustation que la Vente
          ci-dessus. C'est ce qui permet de relier "vente du produit" et
          "goodie remporté" sans deviner via les horodatages : on rejoint sur
          v.degustation_id == g.degustation_id.

    GainGoodie.promotion (FK, nullable)
        → alternative : un goodie peut être lié à une règle Promotion plutôt
          qu'à une dégustation (cas où le goodie est remis directement via
          la mécanique de promotion plutôt que via la roue après dégustation).

    GainPromotion
        → mécanique indépendante des Ventes. Porte elle-même sa propre
          quantité concernée et sa récompense. N'a pas besoin d'être recoupée
          avec une Vente.

    ─── Construction du journal ───────────────────────────────────────────────

    Une ligne de journal = une Vente(NORMAL).
      Vol. Vendu    = Vente.quantite
      Vol. Offert   = somme des Vente(PROMOTION) qui partagent le même
                      degustation_id (si dégustation), sinon 0
      Goodie/Lot    = GainGoodie.goodie.nom si un GainGoodie partage le même
                      degustation_id, sinon "—"

    Une ligne supplémentaire par GainPromotion (mécanique indépendante,
    toujours affichée séparément, jamais fusionnée avec une Vente).

    Une ligne supplémentaire par GainGoodie qui n'a ni degustation, ni
    correspondance déjà couverte (cas orphelin, ex: gain manuel).
    """

    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def _get_entreprise(self, user, nom):
        qs = Entreprise.objects.filter(nom_commercial=nom)
        if user.role == RemoteUser.Roles.ENTREPRISES:
            qs = qs.filter(user=user)
        return qs.first()

    @action(detail=False, methods=["get"], url_path="entreprise")
    def entreprise(self, request):
        nom = request.query_params.get("nom", "").strip()
        if not nom:
            return Response({"detail": "Paramètre 'nom' requis."}, status=status.HTTP_400_BAD_REQUEST)

        entreprise = self._get_entreprise(request.user, nom)
        if not entreprise:
            return Response({"detail": "Entreprise introuvable ou accès refusé."}, status=status.HTTP_404_NOT_FOUND)

        # ── 1. Requêtes DB ────────────────────────────────────────────────────

        ventes = (
            Vente.objects
            .filter(site__campagne__entreprise=entreprise)
            .select_related("hotesse", "site", "site__campagne", "produit", "degustation")
            .order_by("created_at")
        )

        gains_goodies = (
            GainGoodie.objects
            .filter(site__campagne__entreprise=entreprise)
            .select_related("goodie", "site", "degustation__hotesse", "promotion", "produit_associe")
            .order_by("created_at")
        )

        gains_promotions = (
            GainPromotion.objects
            .filter(site__campagne__entreprise=entreprise)
            .select_related("promotion", "hotesse", "site", "campagne")
            .order_by("created_at")
        )

        # ── 2. Index GainGoodie par degustation_id ────────────────────────────
        # Lien FIABLE : pas de fenêtre de temps, juste la FK partagée.

        goodie_by_degustation: dict[str, dict] = {}
        goodies_sans_degustation: list[GainGoodie] = []

        for g in gains_goodies:
            if g.degustation_id:
                goodie_by_degustation[str(g.degustation_id)] = {
                    "id": str(g.id),
                    "nom": g.goodie.nom,
                    "quantite_produit": g.quantite_produit,
                }
            else:
                # Lié à une Promotion, ou gain orphelin sans dégustation.
                goodies_sans_degustation.append(g)

        # ── 3. Regroupement des ventes par dégustation ────────────────────────
        # Une dégustation peut porter : 1 Vente(NORMAL) + 0..n Vente(PROMOTION).
        # On les regroupe pour calculer un Vol. Offert correct, sans le
        # dupliquer ni le confondre avec un GainGoodie.

        ventes_par_degustation: dict[str, dict] = defaultdict(lambda: {
            "normal": None, "offert": 0,
        })
        ventes_sans_degustation: list[Vente] = []

        for v in ventes:
            if v.degustation_id:
                bucket = ventes_par_degustation[str(v.degustation_id)]
                if v.type_vente == Vente.TypeVente.NORMAL:
                    bucket["normal"] = v
                elif v.type_vente == Vente.TypeVente.PROMOTION:
                    bucket["offert"] += v.quantite
                elif v.type_vente == Vente.TypeVente.GRATUIT:
                    # Cas où le goodie est représenté par une Vente GRATUIT
                    # plutôt que par un GainGoodie distinct.
                    bucket["offert"] += 0  # ne compte pas comme "offert promo"
                    bucket["goodie_via_vente"] = v.produit.nom
            else:
                ventes_sans_degustation.append(v)

        # ── 4. Performances agrégées (tableau 1) ──────────────────────────────

        perf = defaultdict(lambda: {
            "hotesse": "", "site": "",
            "actes_vente": 0, "volume_vendu": 0, "volume_offert": 0, "goodies_remis": 0,
        })
        goodies_dist = defaultdict(lambda: defaultdict(int))

        # Index des degustation_ids liés à un GainGoodie (pour éviter le double
        # comptage avec les Vente GRATUIT auto-créées par enregistrer())
        degustation_ids_with_gain = set(
            str(g.degustation_id) for g in gains_goodies if g.degustation_id
        )

        # Index des Vente(GRATUIT) qui sont des "shadow" de GainGoodie :
        # GainGoodie.enregistrer() crée une Vente GRATUIT (sans degustation_id)
        # pour le même site + produit_associe. On les identifie pour ne pas
        # les compter en doublon.
        vente_gratuit_ids_from_gain = set()
        for g in gains_goodies:
            if not g.produit_associe_id:
                continue
            for v in ventes:
                if (v.type_vente == Vente.TypeVente.GRATUIT
                    and v.site_id == g.site_id
                    and v.produit_id == g.produit_associe_id
                    and str(v.id) not in vente_gratuit_ids_from_gain):
                    vente_gratuit_ids_from_gain.add(str(v.id))
                    break  # un GainGoodie ↔ une Vente GRATUIT max

        for v in ventes:
            perf_k = f"{v.hotesse.name} | {v.site.nom}"
            perf[perf_k]["hotesse"] = v.hotesse.name
            perf[perf_k]["site"] = v.site.nom

            if v.type_vente == Vente.TypeVente.NORMAL:
                perf[perf_k]["actes_vente"] += 1
                perf[perf_k]["volume_vendu"] += v.quantite
            elif v.type_vente == Vente.TypeVente.PROMOTION:
                perf[perf_k]["volume_offert"] += v.quantite
            elif v.type_vente == Vente.TypeVente.GRATUIT:
                # Les Vente(GRATUIT) sont auto-créées par GainGoodie.enregistrer().
                # On ne les compte PAS ici si un GainGoodie correspondant existe,
                # pour éviter le double comptage. Les goodies sont comptés via
                # GainGoodie ci-dessous.
                is_shadow = (
                    (v.degustation_id and str(v.degustation_id) in degustation_ids_with_gain)
                    or str(v.id) in vente_gratuit_ids_from_gain
                )
                if not is_shadow:
                    perf[perf_k]["goodies_remis"] += v.quantite
                    goodies_dist[perf_k][v.produit.nom] += v.quantite

        for g in gains_goodies:
            # Identifier l'hôtesse : via la dégustation, ou via la Vente GRATUIT
            hotesse_name = None
            if g.degustation_id and g.degustation and g.degustation.hotesse:
                hotesse_name = g.degustation.hotesse.name
            if not hotesse_name:
                # Chercher la Vente GRATUIT correspondante
                matching_vente = next(
                    (v for v in ventes
                     if v.type_vente == Vente.TypeVente.GRATUIT
                     and v.site_id == g.site_id
                     and g.produit_associe_id
                     and v.produit_id == g.produit_associe_id),
                    None
                )
                if matching_vente:
                    hotesse_name = matching_vente.hotesse.name
            if not hotesse_name:
                # Dernier recours : chercher n'importe quelle Vente GRATUIT sur
                # le même site créée dans les mêmes 2 minutes
                if g.created_at:
                    nearby_vente = next(
                        (v for v in ventes
                         if v.type_vente == Vente.TypeVente.GRATUIT
                         and v.site_id == g.site_id
                         and v.created_at
                         and abs((v.created_at - g.created_at).total_seconds()) < 120),
                        None
                    )
                    if nearby_vente:
                        hotesse_name = nearby_vente.hotesse.name
            # Fallback : utiliser le site seul comme clé si l'hôtesse est inconnue
            hotesse_name = hotesse_name or "—"
            perf_k = f"{hotesse_name} | {g.site.nom}"
            perf[perf_k]["hotesse"] = hotesse_name
            perf[perf_k]["site"] = g.site.nom
            perf[perf_k]["goodies_remis"] += 1
            goodies_dist[perf_k][g.goodie.nom] += 1

        for gp in gains_promotions:
            perf_k = f"{gp.hotesse.name} | {gp.site.nom}"
            perf[perf_k]["hotesse"] = gp.hotesse.name
            perf[perf_k]["site"] = gp.site.nom
            # Ne pas ajouter quantite_produits_concernes à volume_vendu :
            # ces ventes sont déjà comptées via les Vente(NORMAL) du queryset.
            # On ajoute seulement le volume offert par la promotion.
            perf[perf_k]["volume_offert"] += gp.promotion.quantite_offerte

        # ── 5. Journal des transactions (tableau 3) ───────────────────────────

        journal: list[dict] = []

        # 5a. Lignes basées sur une dégustation (lien direct, fiable)
        compteur_anonyme = 0
        for degustation_id, bucket in ventes_par_degustation.items():
            v = bucket["normal"]
            if v is None:
                # Il y a une vente PROMOTION/GRATUIT liée à une dégustation
                # mais pas de vente NORMAL : situation anormale, on l'ignore
                # ici, elle est couverte par ventes_sans_degustation si besoin.
                continue

            compteur_anonyme += 1
            goodie_info = goodie_by_degustation.get(degustation_id)
            goodie_nom = goodie_info["nom"] if goodie_info else (
                bucket.get("goodie_via_vente") or "—"
            )

            journal.append({
                "id": str(v.id),
                "heure": v.created_at.strftime("%H:%M"),
                "hotesse": v.hotesse.name,
                "site": v.site.nom,
                "client": v.nom_client or f"Client N°{compteur_anonyme}",
                "produit": v.produit.nom,
                "volume_vendu": v.quantite,
                "volume_offert": bucket["offert"],
                "goodie_remporte": goodie_nom,
            })

        # 5b. Ventes NORMAL sans dégustation associée (vente directe en boutique)
        for v in ventes_sans_degustation:
            if v.type_vente != Vente.TypeVente.NORMAL:
                continue
            compteur_anonyme += 1
            journal.append({
                "id": str(v.id),
                "heure": v.created_at.strftime("%H:%M"),
                "hotesse": v.hotesse.name,
                "site": v.site.nom,
                "client": v.nom_client or f"Client N°{compteur_anonyme}",
                "produit": v.produit.nom,
                "volume_vendu": v.quantite,
                "volume_offert": 0,
                "goodie_remporte": "—",
            })

        # 5c. GainGoodie sans dégustation (gain manuel / lié à une Promotion)
        for g in goodies_sans_degustation:
            # Tenter de trouver l'hôtesse via la Vente GRATUIT shadow
            hotesse_journal = "—"
            if g.produit_associe_id:
                matching_v = next(
                    (v for v in ventes
                     if v.type_vente == Vente.TypeVente.GRATUIT
                     and v.site_id == g.site_id
                     and v.produit_id == g.produit_associe_id),
                    None
                )
                if matching_v:
                    hotesse_journal = matching_v.hotesse.name
            if hotesse_journal == "—" and g.created_at:
                # Fallback temporel
                nearby_v = next(
                    (v for v in ventes
                     if v.type_vente == Vente.TypeVente.GRATUIT
                     and v.site_id == g.site_id
                     and v.created_at
                     and abs((v.created_at - g.created_at).total_seconds()) < 120),
                    None
                )
                if nearby_v:
                    hotesse_journal = nearby_v.hotesse.name
            journal.append({
                "id": str(g.id),
                "heure": g.created_at.strftime("%H:%M"),
                "hotesse": hotesse_journal,
                "site": g.site.nom,
                "client": g.nom_client or "Anonyme",
                "produit": g.produit_associe.nom if g.produit_associe else "—",
                "volume_vendu": 0,
                "volume_offert": 0,
                "goodie_remporte": g.goodie.nom,
            })

        # 5d. GainPromotion (mécanique indépendante, toujours sa propre ligne)
        for gp in gains_promotions:
            journal.append({
                "id": str(gp.id),
                "heure": gp.created_at.strftime("%H:%M"),
                "hotesse": gp.hotesse.name,
                "site": gp.site.nom,
                "client": gp.nom_client or "Anonyme",
                "produit": "—",
                "volume_vendu": gp.quantite_produits_concernes,
                "volume_offert": gp.promotion.quantite_offerte,
                "goodie_remporte": gp.promotion.recompense_description,
            })

        # ── 6. Totaux ─────────────────────────────────────────────────────────

        totaux = {
            "actes_vente": sum(r["actes_vente"] for r in perf.values()),
            "volume_vendu": sum(r["volume_vendu"] for r in perf.values()),
            "volume_offert": sum(r["volume_offert"] for r in perf.values()),
            "goodies_remis": sum(r["goodies_remis"] for r in perf.values()),
        }

        # ── 7. Meta entreprise ───────────────────────────────────────────────

        meta = {
            "nom": entreprise.nom_commercial,
            "logo": entreprise.logo_url or "",
            "couleur_primaire": entreprise.couleur_primaire or "#065f46",
            "couleur_secondaire": entreprise.couleur_secondaire or "#0d9488",
        }

        return Response({
            "meta": meta,
            "performances": list(perf.values()),
            "goodies_distribution": {k: dict(d) for k, d in goodies_dist.items()},
            "journal": sorted(journal, key=lambda x: x["heure"]),
            "totaux": totaux,
        })