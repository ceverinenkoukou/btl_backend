"""
Détecte et supprime les enregistrements Degustation en double.

Un doublon est défini comme deux Degustation de la même hôtesse,
même site, même produit, créées à moins de WINDOW secondes d'intervalle.

Règles de résolution :
  - 1 seul a une Vente liée  → garde celui-ci, supprime les autres
  - Aucun n'a de Vente        → garde le plus ancien, supprime les suivants
  - Plusieurs ont une Vente   → cas ambigu, signalé mais NON supprimé auto

Avant toute suppression les GainGoodie liés au doublon sont
transférés sur le Degustation conservé (si possible) ou signalés.

UTILISATION (Docker) :
  docker exec -it btl-backend python manage.py deduplicate_degustations
  docker exec -it btl-backend python manage.py deduplicate_degustations --apply
  docker exec -it btl-backend python manage.py deduplicate_degustations --apply --window-seconds=15
"""

from itertools import groupby
from datetime import timedelta

from django.core.management.base import BaseCommand
from django.db import transaction


class Command(BaseCommand):
    help = "Détecte et supprime les Degustation en double (dry run par défaut)"

    def add_arguments(self, parser):
        parser.add_argument(
            "--apply",
            action="store_true",
            help="Applique la déduplication (sans ce flag : aperçu seul).",
        )
        parser.add_argument(
            "--window-seconds",
            type=int,
            default=10,
            help="Fenêtre temporelle en secondes pour considérer deux enregistrements comme doublons (défaut : 10).",
        )

    def handle(self, *args, **options):
        apply = options["apply"]
        window = timedelta(seconds=options["window_seconds"])

        from btl.models import Degustation, Vente, GainGoodie

        sep = "=" * 72
        self.stdout.write(f"\n{sep}")
        self.stdout.write(
            "  APPLICATION — données modifiées" if apply else "  DRY RUN — aucune modification"
        )
        self.stdout.write(f"{sep}\n")
        self.stdout.write(
            f"  Fenêtre de détection : {options['window_seconds']} secondes (double-submit accidentel uniquement)\n"
        )

        # ── Charger tous les enregistrements triés pour le groupement ────
        all_degs = list(
            Degustation.objects
            .select_related("hotesse", "site", "produit")
            .order_by("hotesse_id", "site_id", "produit_id", "created_at")
        )
        total = len(all_degs)
        self.stdout.write(f"  Total Degustation : {total}\n")

        # ── Pré-charger les ID de Degustation qui ont une Vente liée ─────
        deg_ids_avec_vente = set(
            Vente.objects
            .filter(degustation__isnull=False)
            .values_list("degustation_id", flat=True)
        )

        # ── Pré-charger les GainGoodie par degustation_id ─────────────────
        gg_par_deg = {}
        for gg in GainGoodie.objects.filter(degustation__isnull=False).select_related("degustation"):
            gg_par_deg.setdefault(gg.degustation_id, []).append(gg)

        # ── Identifier les clusters (groupes de doublons) ─────────────────
        to_delete = []     # (doublon, conservé) — suppression automatique safe
        ambiguous = []     # clusters à révision manuelle (plusieurs avec Vente)
        transferts_gg = [] # (GainGoodie, degustation_cible_id)

        def key_fn(d):
            return (d.hotesse_id, d.site_id, d.produit_id, d.created_at.date())

        for _key, group_iter in groupby(all_degs, key=key_fn):
            records = list(group_iter)
            if len(records) < 2:
                continue

            # Construire les clusters temporels
            clusters = []
            current = [records[0]]
            for i in range(1, len(records)):
                gap = records[i].created_at - current[-1].created_at
                if gap <= window:
                    current.append(records[i])
                else:
                    if len(current) > 1:
                        clusters.append(current)
                    current = [records[i]]
            if len(current) > 1:
                clusters.append(current)

            for cluster in clusters:
                avec_vente = [d for d in cluster if d.id in deg_ids_avec_vente]
                sans_vente = [d for d in cluster if d.id not in deg_ids_avec_vente]

                if len(avec_vente) > 1:
                    ambiguous.append(cluster)
                    continue

                if len(avec_vente) == 1:
                    garde = avec_vente[0]
                    candidats_suppression = sans_vente
                else:
                    # Aucun n'a de Vente → garder le plus ancien
                    garde = cluster[0]
                    candidats_suppression = cluster[1:]

                for doublon in candidats_suppression:
                    # Gérer les GainGoodie liés au doublon
                    gg_lies = gg_par_deg.get(doublon.id, [])
                    if gg_lies:
                        if gg_par_deg.get(garde.id):
                            # Le conservé a déjà un GainGoodie → conflit
                            ambiguous.append(cluster)
                            candidats_suppression.remove(doublon) if doublon in candidats_suppression else None
                            continue
                        for gg in gg_lies:
                            transferts_gg.append((gg, garde))
                    to_delete.append((doublon, garde))

        # ── Afficher le résumé ────────────────────────────────────────────
        self.stdout.write(f"  Doublons détectés (suppression auto) : {len(to_delete)}")
        self.stdout.write(f"  Cas ambigus (révision manuelle)      : {len(ambiguous)}")
        self.stdout.write(f"  Transferts GainGoodie                : {len(transferts_gg)}\n")

        if to_delete:
            self.stdout.write("  Détail des doublons :")
            shown = 0
            for doublon, garde in to_delete:
                if shown >= 20:
                    self.stdout.write(f"    … et {len(to_delete) - shown} autres")
                    break
                self.stdout.write(
                    f"    ❌ {doublon.id} ({doublon.created_at:%Y-%m-%d %H:%M:%S})"
                    f" hôtesse={doublon.hotesse.name} site={doublon.site.nom}"
                    f" produit={doublon.produit.nom}"
                    f"  →  conservé : {garde.id} ({garde.created_at:%Y-%m-%d %H:%M:%S})"
                )
                shown += 1

        if ambiguous:
            self.stdout.write(self.style.WARNING(
                f"\n  ⚠  Cas ambigus ({len(ambiguous)} clusters) — vérification manuelle requise :"
            ))
            for cluster in ambiguous[:5]:
                ids = [str(d.id) for d in cluster]
                self.stdout.write(
                    f"    Cluster hôtesse={cluster[0].hotesse.name}"
                    f" site={cluster[0].site.nom}"
                    f" produit={cluster[0].produit.nom}"
                    f" — IDs : {', '.join(ids)}"
                )
            if len(ambiguous) > 5:
                self.stdout.write(f"    … et {len(ambiguous)-5} autres clusters")

        # ── Appliquer ─────────────────────────────────────────────────────
        if apply and to_delete:
            ids_a_supprimer = [doublon.id for doublon, _ in to_delete]
            with transaction.atomic():
                # Transférer les GainGoodie avant la suppression (CASCADE)
                for gg, cible in transferts_gg:
                    gg.degustation = cible
                    gg.save(update_fields=["degustation"])

                deleted, _ = Degustation.objects.filter(id__in=ids_a_supprimer).delete()

            self.stdout.write(self.style.SUCCESS(
                f"\n  ✅ {deleted} Degustation supprimées,"
                f" {len(transferts_gg)} GainGoodie transférés."
            ))
        elif not apply:
            self.stdout.write(
                "\n  Relancez avec --apply pour appliquer la déduplication."
            )

        # ── Résumé final ──────────────────────────────────────────────────
        self.stdout.write(f"\n{sep}")
        if apply:
            self.stdout.write(self.style.SUCCESS("  ✅ Déduplication terminée."))
        else:
            self.stdout.write("  DRY RUN terminé.")
        self.stdout.write(f"{sep}\n")
