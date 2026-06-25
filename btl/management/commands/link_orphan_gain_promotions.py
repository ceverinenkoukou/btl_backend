from datetime import timedelta

from django.core.management.base import BaseCommand

from btl.models import GainPromotion, Vente


class Command(BaseCommand):
    """
    Rattache rétroactivement les GainPromotion sans vente_achat (créés avant
    l'ajout de ce lien) à la Vente NORMAL correspondante — celle créée dans
    la même transaction par POST /promotions/{id}/enregistrer-gain/.

    Le rapprochement se fait par hôtesse + site + quantité
    (Vente.quantite == GainPromotion.quantite_produits_concernes) +
    proximité temporelle (les deux sont créés à quelques ms d'écart).

    Par défaut, le script tourne en mode aperçu et n'écrit rien.
    Ajouter --apply pour effectuer réellement les liaisons.
    """

    help = (
        "Rattache rétroactivement les GainPromotion sans vente_achat à la "
        "Vente NORMAL correspondante (rapprochement hôtesse/site/quantité/temps). "
        "Sans --apply, affiche seulement un aperçu."
    )

    def add_arguments(self, parser):
        parser.add_argument(
            "--apply",
            action="store_true",
            help="Écrit réellement les liaisons (sinon : aperçu seul, aucune écriture).",
        )
        parser.add_argument(
            "--window-seconds",
            type=int,
            default=30,
            help="Fenêtre temporelle maximale (en secondes) pour considérer une Vente comme correspondante (défaut: 30).",
        )

    def handle(self, *args, **options):
        apply_changes = options["apply"]
        window = timedelta(seconds=options["window_seconds"])

        orphelins = GainPromotion.objects.filter(
            vente_achat__isnull=True
        ).select_related("hotesse", "site", "campagne").order_by("created_at")

        total = orphelins.count()
        self.stdout.write(f"GainPromotion sans vente_achat : {total}")
        if not apply_changes:
            self.stdout.write(self.style.WARNING(
                "Mode aperçu (--dry-run implicite) — aucune écriture. Relancer avec --apply pour appliquer."
            ))

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

            self.stdout.write(
                f"  {gain.id} ({gain.created_at:%Y-%m-%d %H:%M:%S}) "
                f"hôtesse={gain.hotesse.name} site={gain.site.nom} client={gain.nom_client or '(non renseigné)'} "
                f"-> vente {meilleur.id} (écart {meilleur_delta})"
            )
            if apply_changes:
                gain.vente_achat = meilleur
                gain.save(update_fields=["vente_achat"])
            linked += 1

        self.stdout.write("")
        self.stdout.write(self.style.SUCCESS(
            f"{'Liés' if apply_changes else 'À lier'} : {linked} / {total}"
        ))
        if unmatched:
            self.stdout.write(self.style.WARNING(
                f"Sans correspondance trouvée ({len(unmatched)}) :"
            ))
            for gain in unmatched:
                self.stdout.write(
                    f"  {gain.id} ({gain.created_at:%Y-%m-%d %H:%M:%S}) "
                    f"hôtesse={gain.hotesse.name} site={gain.site.nom} campagne={gain.campagne.nom}"
                )
