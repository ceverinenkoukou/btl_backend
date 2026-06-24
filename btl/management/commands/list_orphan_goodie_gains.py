from django.core.management.base import BaseCommand

from btl.models import GainGoodie


class Command(BaseCommand):
    """
    Liste les gains de goodies (roue de la fortune) qui n'ont aucune
    Degustation liée — typiquement parce que le formulaire de dégustation
    plantait au moment où l'hôtesse a fait tourner la roue, donc le gain a
    été enregistré (GainGoodie) sans que le client/la dégustation ne le
    soit (aucune Vente/Degustation correspondante en base).

    Ce script ne modifie rien : il sert juste à identifier précisément
    quelles lignes nécessitent une saisie manuelle (ligne de commande ou
    admin Django) pour compléter la dégustation manquante.
    """

    help = (
        "Liste les GainGoodie sans Degustation liée (roue jouée sans dégustation "
        "enregistrée), pour faciliter la saisie manuelle de rattrapage. "
        "Ne modifie aucune donnée."
    )

    def add_arguments(self, parser):
        parser.add_argument(
            "--campagne", type=str, default=None,
            help="Filtrer par nom de campagne (recherche insensible à la casse, partielle).",
        )
        parser.add_argument(
            "--date-from", type=str, default=None,
            help="Filtrer à partir de cette date (YYYY-MM-DD), incluse.",
        )
        parser.add_argument(
            "--date-to", type=str, default=None,
            help="Filtrer jusqu'à cette date (YYYY-MM-DD), incluse.",
        )

    def handle(self, *args, **options):
        qs = GainGoodie.objects.filter(degustation__isnull=True).select_related(
            "site", "site__campagne", "hotesse", "goodie", "produit_associe", "promotion",
        ).order_by("site__campagne__nom", "site__nom", "created_at")

        if options["campagne"]:
            qs = qs.filter(site__campagne__nom__icontains=options["campagne"])
        if options["date_from"]:
            qs = qs.filter(created_at__date__gte=options["date_from"])
        if options["date_to"]:
            qs = qs.filter(created_at__date__lte=options["date_to"])

        total = qs.count()
        self.stdout.write(f"Gains de goodies sans dégustation liée : {total}")
        self.stdout.write("")

        if total == 0:
            return

        current_key = None
        for g in qs:
            key = (g.site.campagne.nom, g.site.nom)
            if key != current_key:
                current_key = key
                self.stdout.write(self.style.MIGRATE_HEADING(f"--- {key[0]} — {key[1]} ---"))

            client = g.nom_client or "(non renseigné)"
            produit = g.produit_associe.nom if g.produit_associe else "—"
            promo = f" | promo: {g.promotion.recompense_description}" if g.promotion else ""
            self.stdout.write(
                f"  {g.created_at:%Y-%m-%d %H:%M} | hôtesse: {g.hotesse.name if g.hotesse else '?'} "
                f"| client: {client} | goodie: {g.goodie.nom} | produit: {produit}{promo} | gain_id: {g.id}"
            )

        self.stdout.write("")
        self.stdout.write(self.style.WARNING(
            "Pour chacune de ces lignes, il manque une Degustation (et probablement une Vente) "
            "correspondante — à créer manuellement (tranche d'âge, genre, intention d'achat "
            "ne peuvent pas être déduits automatiquement)."
        ))
