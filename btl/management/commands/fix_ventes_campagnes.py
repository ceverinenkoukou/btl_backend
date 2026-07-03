"""
Corrige les rapports des campagnes VENTE sans supprimer de données.

CE QUE FAIT CETTE COMMANDE :
  Étape 1 – Rattache GainPromotion.vente_achat aux Vente NORMAL correspondantes
            (même logique que link_orphan_gain_promotions, fenêtre 30 s par défaut).
  Étape 2 – Régénère les RapportJournalier pour toutes les dates où les campagnes
            VENTE ont eu de l'activité (basé sur les Vente existantes).
            Après la correction de tasks.py, nb_degustations sera 0 pour les
            campagnes VENTE, ce qui rétablit des statistiques exactes.

PRÉREQUIS :
  Le fichier tasks.py doit déjà être patché pour exclure les campagnes VENTE
  du décompte nb_degustations (sinon la régénération ne corrige rien).

UTILISATION (Docker) :
  docker exec -it btl-backend python manage.py fix_ventes_campagnes
  docker exec -it btl-backend python manage.py fix_ventes_campagnes --apply
"""

from datetime import timedelta

from django.core.management.base import BaseCommand
from django.db import transaction


class Command(BaseCommand):
    help = "Backfille GainPromotion.vente_achat et régénère les rapports VENTE (dry run par défaut)"

    def add_arguments(self, parser):
        parser.add_argument(
            "--apply",
            action="store_true",
            help="Applique les corrections (sans ce flag : aperçu seul).",
        )
        parser.add_argument(
            "--window-seconds",
            type=int,
            default=30,
            help="Fenêtre temporelle pour rattacher GainPromotion ↔ Vente (défaut : 30 s).",
        )

    def handle(self, *args, **options):
        apply = options["apply"]
        window = timedelta(seconds=options["window_seconds"])

        from btl.models import Campagne, GainPromotion, Site, Vente

        sep = "=" * 72
        self.stdout.write(f"\n{sep}")
        self.stdout.write(
            "  APPLICATION — données modifiées" if apply else "  DRY RUN — aucune modification"
        )
        self.stdout.write(f"{sep}")

        # ── Identifier les campagnes VENTE ────────────────────────────────
        vente_campagnes = Campagne.objects.filter(
            type_campagne=Campagne.TypeCampagne.VENTE
        )
        vente_site_ids = list(
            Site.objects.filter(campagne__in=vente_campagnes).values_list("id", flat=True)
        )
        self.stdout.write(f"\n  Campagnes VENTE : {vente_campagnes.count()}")
        for c in vente_campagnes:
            sites_noms = ", ".join(c.sites.values_list("nom", flat=True))
            self.stdout.write(f"    • {c.nom}  [{sites_noms or '(aucun site)'}]")

        # ─────────────────────────────────────────────────────────────────
        # ÉTAPE 1 — Backfill GainPromotion.vente_achat
        # ─────────────────────────────────────────────────────────────────
        self.stdout.write(f"\n{'─'*72}")
        self.stdout.write("ÉTAPE 1 — Rattachement GainPromotion → Vente (vente_achat)")
        self.stdout.write(f"{'─'*72}")

        orphelins = (
            GainPromotion.objects.filter(vente_achat__isnull=True)
            .select_related("hotesse", "site", "campagne")
            .order_by("created_at")
        )
        total_orphelins = orphelins.count()
        self.stdout.write(f"  GainPromotion sans vente_achat : {total_orphelins}")

        linked = 0
        unmatched = []

        for gain in orphelins:
            candidats = Vente.objects.filter(
                hotesse=gain.hotesse,
                site=gain.site,
                type_vente=Vente.TypeVente.NORMAL,
                quantite=gain.quantite_produits_concernes,
                gain_promotion__isnull=True,
            )
            meilleur = None
            meilleur_delta = None
            for v in candidats:
                delta = abs(v.created_at - gain.created_at)
                if delta <= window and (meilleur_delta is None or delta < meilleur_delta):
                    meilleur = v
                    meilleur_delta = delta

            if meilleur is None:
                unmatched.append(gain)
                continue

            if not apply:
                self.stdout.write(
                    f"    {gain.id} ({gain.created_at:%Y-%m-%d %H:%M})"
                    f" hôtesse={gain.hotesse.name} site={gain.site.nom}"
                    f" → Vente {meilleur.id} (écart {meilleur_delta})"
                )
            else:
                gain.vente_achat = meilleur
                gain.save(update_fields=["vente_achat"])
            linked += 1

        verb = "Liés" if apply else "À lier"
        self.stdout.write(
            self.style.SUCCESS(f"  {verb} : {linked} / {total_orphelins}")
            if apply else f"  {verb} : {linked} / {total_orphelins}"
        )
        if unmatched:
            self.stdout.write(self.style.WARNING(
                f"  ⚠  Sans correspondance ({len(unmatched)}) :"
            ))
            for gp in unmatched[:8]:
                self.stdout.write(
                    f"    - {gp.id} {gp.created_at:%Y-%m-%d %H:%M}"
                    f" hôtesse={gp.hotesse.name} site={gp.site.nom}"
                )
            if len(unmatched) > 8:
                self.stdout.write(f"    … et {len(unmatched) - 8} autres")

        # ─────────────────────────────────────────────────────────────────
        # ÉTAPE 2 — Régénérer les RapportJournalier des campagnes VENTE
        # ─────────────────────────────────────────────────────────────────
        self.stdout.write(f"\n{'─'*72}")
        self.stdout.write("ÉTAPE 2 — Régénération des RapportJournalier (campagnes VENTE)")
        self.stdout.write(f"{'─'*72}")

        dates_activite = sorted(set(
            Vente.objects.filter(site_id__in=vente_site_ids)
            .values_list("created_at__date", flat=True)
        ))
        self.stdout.write(f"  {len(dates_activite)} jour(s) à régénérer :")
        for d in dates_activite:
            self.stdout.write(f"    • {d}")

        if apply and dates_activite:
            from btl.tasks import task_generer_rapports_journaliers

            for d in dates_activite:
                task_generer_rapports_journaliers(date_str=str(d))
                self.stdout.write(self.style.SUCCESS(f"    ✅ {d} régénéré"))

        # ── Résumé final ──────────────────────────────────────────────────
        self.stdout.write(f"\n{sep}")
        if not apply:
            self.stdout.write(
                "  DRY RUN terminé.\n"
                "  Relancez avec --apply pour appliquer les corrections.\n\n"
                "  ⚠  Assurez-vous que tasks.py est à jour AVANT de lancer --apply,\n"
                "     sinon nb_degustations ne sera pas corrigé dans les rapports."
            )
        else:
            self.stdout.write(self.style.SUCCESS(
                "  ✅ Backfill et régénération des rapports terminés."
            ))
        self.stdout.write(f"{sep}\n")
