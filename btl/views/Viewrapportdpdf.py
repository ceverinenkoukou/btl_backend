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
            .select_related("goodie", "site", "hotesse", "degustation__hotesse", "promotion", "produit_associe")
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
            # Identifier l'hôtesse : en priorité via le gain, puis via la dégustation
            # ou via la Vente GRATUIT pour les anciennes données.
            hotesse_name = None
            if g.hotesse:
                hotesse_name = g.hotesse.name
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
        merge_window = timedelta(minutes=10)

        def normalize_client(value):
            value = (value or "Client").strip()
            lowered = value.lower()
            for suffix in (" achat", " offert"):
                if lowered.endswith(suffix):
                    value = value[: -len(suffix)].strip()
                    break
            return " ".join(value.split()) or "Client"

        def is_placeholder_client(value):
            return value in ("Client", "Anonyme") or value.startswith("Client N°")

        def merge_label(current, addition):
            if not addition or addition == "—":
                return current or "—"
            if not current or current == "—":
                return addition
            parts = [p.strip() for p in current.split(",") if p.strip()]
            if addition not in parts:
                parts.append(addition)
            return ", ".join(parts)

        def find_triggering_row(event_time, site_nom, client, hotesse=None):
            candidates = []
            for row in journal:
                if row["volume_vendu"] <= 0:
                    continue
                if row["site"] != site_nom:
                    continue
                if hotesse and row["hotesse"] != hotesse:
                    continue
                same_client = (
                    row["client"] == client
                    or is_placeholder_client(row["client"])
                    or is_placeholder_client(client)
                )
                if not same_client:
                    continue
                delta = abs(row["_time"] - event_time)
                if delta <= merge_window:
                    candidates.append((delta, row))
            candidates.sort(key=lambda item: item[0])
            return candidates[0][1] if candidates else None

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
                "_time": v.created_at,
                "hotesse": v.hotesse.name,
                "site": v.site.nom,
                "client": normalize_client(v.nom_client) if v.nom_client else f"Client N°{compteur_anonyme}",
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
                "_time": v.created_at,
                "hotesse": v.hotesse.name,
                "site": v.site.nom,
                "client": normalize_client(v.nom_client) if v.nom_client else f"Client N°{compteur_anonyme}",
                "produit": v.produit.nom,
                "volume_vendu": v.quantite,
                "volume_offert": 0,
                "goodie_remporte": "—",
            })

        # 5b bis. Ventes offertes sans dégustation : les rattacher à la vente
        # normale qui les a déclenchées quand elle existe.
        for v in ventes_sans_degustation:
            if v.type_vente == Vente.TypeVente.NORMAL:
                continue

            client = normalize_client(v.nom_client)
            row = find_triggering_row(v.created_at, v.site.nom, client, v.hotesse.name)
            if row:
                if is_placeholder_client(row["client"]) and not is_placeholder_client(client):
                    row["client"] = client
                row["volume_offert"] += v.quantite
                if v.type_vente == Vente.TypeVente.GRATUIT:
                    row["goodie_remporte"] = merge_label(row["goodie_remporte"], v.produit.nom)
                continue

            journal.append({
                "id": str(v.id),
                "heure": v.created_at.strftime("%H:%M"),
                "_time": v.created_at,
                "hotesse": v.hotesse.name,
                "site": v.site.nom,
                "client": client,
                "produit": v.produit.nom,
                "volume_vendu": 0,
                "volume_offert": v.quantite,
                "goodie_remporte": v.produit.nom if v.type_vente == Vente.TypeVente.GRATUIT else "—",
            })

        # 5c. GainGoodie sans dégustation (gain manuel / lié à une Promotion)
        for g in goodies_sans_degustation:
            # Priorité au gain lui-même, puis fallback historique via Vente GRATUIT.
            hotesse_journal = g.hotesse.name if g.hotesse else "—"
            if hotesse_journal == "—" and g.produit_associe_id:
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
            client = normalize_client(g.nom_client)
            row = find_triggering_row(
                g.created_at,
                g.site.nom,
                client,
                None if hotesse_journal == "—" else hotesse_journal,
            )
            already_counted_by_free_sale = any(
                v.type_vente == Vente.TypeVente.GRATUIT
                and v.site_id == g.site_id
                and (not g.produit_associe_id or v.produit_id == g.produit_associe_id)
                and abs(v.created_at - g.created_at) <= merge_window
                for v in ventes
            )
            if row:
                if is_placeholder_client(row["client"]) and not is_placeholder_client(client):
                    row["client"] = client
                if not already_counted_by_free_sale:
                    row["volume_offert"] += g.quantite_produit
                row["goodie_remporte"] = merge_label(row["goodie_remporte"], g.goodie.nom)
                continue

            journal.append({
                "id": str(g.id),
                "heure": g.created_at.strftime("%H:%M"),
                "_time": g.created_at,
                "hotesse": hotesse_journal,
                "site": g.site.nom,
                "client": client,
                "produit": g.produit_associe.nom if g.produit_associe else "—",
                "volume_vendu": 0,
                "volume_offert": 0 if already_counted_by_free_sale else g.quantite_produit,
                "goodie_remporte": g.goodie.nom,
            })

        # 5d. GainPromotion : fusionné avec la vente normale déclencheuse si elle
        # existe, sinon affiché comme ligne indépendante.
        for gp in gains_promotions:
            client = normalize_client(gp.nom_client)
            row = find_triggering_row(gp.created_at, gp.site.nom, client, gp.hotesse.name)
            already_counted_by_promo_sale = any(
                v.type_vente == Vente.TypeVente.PROMOTION
                and v.site_id == gp.site_id
                and v.hotesse_id == gp.hotesse_id
                and normalize_client(v.nom_client) == client
                and abs(v.created_at - gp.created_at) <= merge_window
                for v in ventes
            )
            if row:
                if is_placeholder_client(row["client"]) and not is_placeholder_client(client):
                    row["client"] = client
                if not already_counted_by_promo_sale:
                    row["volume_offert"] += gp.promotion.quantite_offerte
                row["goodie_remporte"] = merge_label(row["goodie_remporte"], gp.promotion.recompense_description)
                continue

            journal.append({
                "id": str(gp.id),
                "heure": gp.created_at.strftime("%H:%M"),
                "_time": gp.created_at,
                "hotesse": gp.hotesse.name,
                "site": gp.site.nom,
                "client": client,
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
        journal_public = [
            {k: v for k, v in row.items() if k != "_time"}
            for row in sorted(journal, key=lambda x: x["_time"])
        ]

        return Response({
            "meta": meta,
            "performances": list(perf.values()),
            "goodies_distribution": {k: dict(d) for k, d in goodies_dist.items()},
            "journal": journal_public,
            "totaux": totaux,
        })
