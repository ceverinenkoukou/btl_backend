from datetime import timedelta

from django.core.management.base import BaseCommand

from btl.models import Degustation, Vente


class Command(BaseCommand):
    """
    Rattache rétroactivement les Degustation(a_achete=True) qui n'ont pas de
    Vente liée (vente_associee NULL) à la Vente NORMAL correspondante, créée
    indépendamment via la promotion (POST /promotions/{id}/enregistrer-gain/
    ne renseignait pas le champ Vente.degustation avant ce correctif).

    Le rapprochement se fait par hôtesse + site + produit + proximité
    temporelle (la Vente est créée dans la même transaction que le
    GainPromotion, quelques dizaines de ms après la Degustation).

    Par défaut, le script tourne en mode aperçu (--dry-run implicite) et
    n'écrit rien. Ajouter --apply pour effectuer réellement les liaisons.
    """

    help = (
        "Rattache rétroactivement les dégustations achetées (a_achete=True) "
        "sans vente liée à la Vente NORMAL correspondante (rapprochement "
        "hôtesse/site/produit/temps). Sans --apply, affiche seulement un aperçu."
    )

    def add_arguments(self, parser):
        parser.add_argument(
            "--apply",
            action="store_true",
            help="Écrit réellement les liaisons (sinon : aperçu seul, aucune écriture).",
        )
        parser.add_argument(
            "--window-minutes",
            type=int,
            default=5,
            help="Fenêtre temporelle maximale (en minutes) pour considérer une Vente comme correspondante (défaut: 5).",
        )
        parser.add_argument(
            "--campagne",
            type=str,
            default=None,
            help="Filtre par nom de campagne (recherche partielle, insensible à la casse).",
        )
        parser.add_argument(
            "--date",
            type=str,
            default=None,
            help="Filtre par date de la dégustation (YYYY-MM-DD).",
        )

    def handle(self, *args, **options):
        apply_changes = options["apply"]
        window = timedelta(minutes=options["window_minutes"])

        orphelines = Degustation.objects.filter(a_achete=True, vente_associee__isnull=True)
        if options["campagne"]:
            orphelines = orphelines.filter(campagne__nom__icontains=options["campagne"])
        if options["date"]:
            orphelines = orphelines.filter(created_at__date=options["date"])
        orphelines = orphelines.select_related("hotesse", "site", "produit", "campagne").order_by("created_at")

        total = orphelines.count()
        self.stdout.write(f"Dégustations a_achete=True sans vente liée : {total}")
        if not apply_changes:
            self.stdout.write(self.style.WARNING(
                "Mode aperçu (--dry-run implicite) — aucune écriture. Relancer avec --apply pour appliquer."
            ))

        linked = 0
        unmatched = []

        for d in orphelines:
            candidats = Vente.objects.filter(
                hotesse=d.hotesse,
                site=d.site,
                produit=d.produit,
                type_vente=Vente.TypeVente.NORMAL,
                degustation__isnull=True,
            )
            meilleur = None
            meilleur_delta = None
            for v in candidats:
                delta = abs(v.created_at - d.created_at)
                if delta <= window and (meilleur_delta is None or delta < meilleur_delta):
                    meilleur = v
                    meilleur_delta = delta

            if meilleur is None:
                unmatched.append(d)
                continue

            self.stdout.write(
                f"  {d.id} ({d.created_at:%Y-%m-%d %H:%M:%S}) "
                f"hôtesse={d.hotesse.name} site={d.site.nom} produit={d.produit.nom} "
                f"-> vente {meilleur.id} (écart {meilleur_delta})"
            )
            if apply_changes:
                meilleur.degustation = d
                meilleur.save(update_fields=["degustation"])
            linked += 1

        self.stdout.write("")
        self.stdout.write(self.style.SUCCESS(
            f"{'Liées' if apply_changes else 'À lier'} : {linked} / {total}"
        ))
        if unmatched:
            self.stdout.write(self.style.WARNING(
                f"Sans correspondance trouvée ({len(unmatched)}) :"
            ))
            for d in unmatched:
                self.stdout.write(
                    f"  {d.id} ({d.created_at:%Y-%m-%d %H:%M:%S}) "
                    f"hôtesse={d.hotesse.name} site={d.site.nom} campagne={d.campagne.nom}"
                )
