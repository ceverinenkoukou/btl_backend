from django.core.management.base import BaseCommand, CommandError
from django.db import transaction

from btl.models import Degustation, Vente


class Command(BaseCommand):
    """
    Crée la Vente "hors promo" (NORMAL) manquante pour une Degustation
    existante marquée a_achete=True mais sans vente_associee — cas où le
    conditionnement n'avait pas été envoyé au moment de la création de la
    dégustation (cf. DegustationSerializer.create : sans conditionnement,
    aucune Vente n'est créée, et l'info est perdue si elle n'est pas
    reconstituée manuellement ici).

    À lancer après `link_orphan_ventes` : les dégustations listées comme
    "sans correspondance trouvée" par cette dernière n'ont jamais eu de
    Vente créée (pas juste mal liée) — ce sont elles à traiter ici.

    Avec --all, le même conditionnement/quantite est appliqué à toutes les
    dégustations orphelines trouvées (l'info réelle par dégustation n'est
    pas récupérable automatiquement). Si certaines sont des PACK et d'autres
    des UNITE, traite d'abord les PACK connues via --degustation-ids (lot
    d'UUIDs séparés par des virgules) avec --conditionnement PACK, PUIS lance
    --all avec --conditionnement UNITE : celles déjà traitées ne sont plus
    "orphelines" et seront ignorées par le --all qui suit.
    """

    help = (
        "Crée la Vente hors promo manquante pour une (--degustation-id), "
        "plusieurs (--degustation-ids id1,id2,...) ou toutes (--all) les "
        "Degustation(a_achete=True, vente_associee=None)."
    )

    def add_arguments(self, parser):
        parser.add_argument("--degustation-id", type=str, default=None, help="UUID d'une dégustation précise à corriger.")
        parser.add_argument("--degustation-ids", type=str, default=None, help="UUIDs séparés par des virgules, pour appliquer le même conditionnement/quantite à un lot précis (ex: les ventes en PACK identifiées).")
        parser.add_argument("--all", action="store_true", help="Traite toutes les dégustations orphelines restantes (a_achete=True, sans vente liée).")
        parser.add_argument("--campagne", type=str, default=None, help="Avec --all : filtre par nom de campagne (recherche partielle, insensible à la casse).")
        parser.add_argument("--date", type=str, default=None, help="Avec --all : filtre par date de la dégustation (YYYY-MM-DD).")
        parser.add_argument("--conditionnement", type=str, default="UNITE", choices=["UNITE", "PACK"])
        parser.add_argument("--quantite", type=int, default=1)
        parser.add_argument("--dry-run", action="store_true", help="Affiche ce qui serait créé sans rien écrire en base.")

    def handle(self, *args, **options):
        if not options["degustation_id"] and not options["degustation_ids"] and not options["all"]:
            raise CommandError("Fournis --degustation-id <uuid>, --degustation-ids <uuid1,uuid2,...> ou --all.")

        if options["degustation_id"]:
            try:
                degustations = [
                    Degustation.objects.select_related("hotesse", "site", "produit")
                    .get(id=options["degustation_id"])
                ]
            except Degustation.DoesNotExist:
                raise CommandError(f"Dégustation introuvable : {options['degustation_id']}")
        elif options["degustation_ids"]:
            ids = [v.strip() for v in options["degustation_ids"].split(",") if v.strip()]
            degustations = list(
                Degustation.objects.filter(id__in=ids)
                .select_related("hotesse", "site", "produit")
                .order_by("created_at")
            )
            trouves = {str(d.id) for d in degustations}
            manquants = [i for i in ids if i not in trouves]
            if manquants:
                raise CommandError(f"Dégustation(s) introuvable(s) : {', '.join(manquants)}")
        else:
            qs = Degustation.objects.filter(a_achete=True, vente_associee__isnull=True)
            if options["campagne"]:
                qs = qs.filter(campagne__nom__icontains=options["campagne"])
            if options["date"]:
                qs = qs.filter(created_at__date=options["date"])
            degustations = list(
                qs.select_related("hotesse", "site", "produit")
                .order_by("created_at")
            )

        if not degustations:
            self.stdout.write("Rien à corriger.")
            return

        self.stdout.write(f"{len(degustations)} dégustation(s) à examiner.")
        if options["dry_run"]:
            self.stdout.write(self.style.WARNING("Dry-run — rien ne sera écrit."))

        created = 0
        for d in degustations:
            if not d.a_achete:
                self.stdout.write(self.style.WARNING(f"  {d.id} : a_achete=False, ignorée."))
                continue
            try:
                existante = d.vente_associee
                self.stdout.write(self.style.WARNING(f"  {d.id} : déjà liée à la vente {existante.id}, ignorée."))
                continue
            except Vente.DoesNotExist:
                pass

            self.stdout.write(
                f"  {d.id} ({d.created_at:%Y-%m-%d %H:%M}) hôtesse={d.hotesse.name} "
                f"site={d.site.nom} produit={d.produit.nom} "
                f"-> Vente conditionnement={options['conditionnement']} quantite={options['quantite']}"
            )
            if options["dry_run"]:
                created += 1
                continue

            with transaction.atomic():
                vente = Vente.objects.create(
                    degustation=d,
                    hotesse=d.hotesse,
                    site=d.site,
                    produit=d.produit,
                    conditionnement=options["conditionnement"],
                    quantite=options["quantite"],
                    type_vente=Vente.TypeVente.NORMAL,
                    nom_client=d.nom_client,
                )
                Vente.objects.filter(id=vente.id).update(created_at=d.created_at)
            created += 1

        self.stdout.write("")
        if options["dry_run"]:
            self.stdout.write(self.style.WARNING(f"{created} vente(s) seraient créée(s) — relancer sans --dry-run pour appliquer."))
        else:
            self.stdout.write(self.style.SUCCESS(f"{created} vente(s) créée(s)."))
