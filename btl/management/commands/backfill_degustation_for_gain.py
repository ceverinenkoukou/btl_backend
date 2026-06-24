from django.core.management.base import BaseCommand, CommandError
from django.db import transaction

from btl.models import GainGoodie, Degustation, Vente, Produit


class Command(BaseCommand):
    """
    Crée la Degustation (et la Vente "hors promo" associée) manquante pour un
    GainGoodie orphelin (roue jouée sans dégustation enregistrée — voir
    `list_orphan_goodie_gains`), et relie le tout au gain existant.

    La date de création de la Degustation/Vente est calée sur celle du gain
    d'origine (auto_now_add contourné via un .update() après coup), pour que
    le bulletin/rapport de ce jour-là reste cohérent.
    """

    help = (
        "Backfill : crée la Degustation + Vente (hors promo) manquante pour un "
        "GainGoodie orphelin, et les relie. Voir d'abord `list_orphan_goodie_gains` "
        "pour récupérer le --gain-id."
    )

    def add_arguments(self, parser):
        parser.add_argument("--gain-id", type=str, required=True, help="UUID du GainGoodie orphelin à compléter.")
        parser.add_argument(
            "--tranche-age", type=str, required=True,
            choices=[c[0] for c in Degustation.TrancheAge.choices],
            help="Tranche d'âge du client (" + ", ".join(c[0] for c in Degustation.TrancheAge.choices) + ").",
        )
        parser.add_argument(
            "--genre", type=str, required=True,
            choices=[c[0] for c in Degustation.Genre.choices],
            help="Genre du client (" + ", ".join(c[0] for c in Degustation.Genre.choices) + ").",
        )
        parser.add_argument(
            "--intention-achat", type=str, default=Degustation.IntentionAchat.ELEVEE,
            choices=[c[0] for c in Degustation.IntentionAchat.choices],
            help="Intention d'achat (défaut: ELEVEE, cohérent avec un client ayant acheté).",
        )
        parser.add_argument(
            "--produit-id", type=str, default=None,
            help="UUID du produit acheté. Si omis, utilise le produit_associe du goodie s'il existe.",
        )
        parser.add_argument(
            "--conditionnement", type=str, default="UNITE", choices=["UNITE", "PACK"],
            help="Conditionnement de la vente (défaut: UNITE).",
        )
        parser.add_argument("--quantite", type=int, default=1, help="Quantité vendue (défaut: 1).")
        parser.add_argument(
            "--dry-run", action="store_true",
            help="Affiche ce qui serait créé sans rien écrire en base.",
        )

    def handle(self, *args, **options):
        try:
            gain = GainGoodie.objects.select_related(
                "site", "hotesse", "goodie", "produit_associe",
            ).get(id=options["gain_id"])
        except GainGoodie.DoesNotExist:
            raise CommandError(f"GainGoodie introuvable : {options['gain_id']}")

        if gain.degustation_id is not None:
            raise CommandError(
                f"Ce gain a déjà une dégustation liée ({gain.degustation_id}) — rien à faire."
            )

        produit = None
        if options["produit_id"]:
            try:
                produit = Produit.objects.get(id=options["produit_id"])
            except Produit.DoesNotExist:
                raise CommandError(f"Produit introuvable : {options['produit_id']}")
        elif gain.produit_associe:
            produit = gain.produit_associe

        if produit is None:
            raise CommandError(
                "Aucun produit fourni (--produit-id) et le goodie n'a pas de produit_associe. "
                "Précise --produit-id explicitement."
            )

        self.stdout.write(
            f"Gain {gain.id} | {gain.created_at:%Y-%m-%d %H:%M} | hôtesse={gain.hotesse.name} "
            f"| site={gain.site.nom} | client={gain.nom_client or '(non renseigné)'} | goodie={gain.goodie.nom}"
        )
        self.stdout.write(
            f"-> Degustation : produit={produit.nom}, tranche_age={options['tranche_age']}, "
            f"genre={options['genre']}, intention_achat={options['intention_achat']}"
        )
        self.stdout.write(
            f"-> Vente (hors promo) : conditionnement={options['conditionnement']}, "
            f"quantite={options['quantite']}, date={gain.created_at:%Y-%m-%d %H:%M}"
        )

        if options["dry_run"]:
            self.stdout.write(self.style.WARNING("Dry-run — rien écrit."))
            return

        with transaction.atomic():
            degustation = Degustation.objects.create(
                hotesse=gain.hotesse,
                site=gain.site,
                campagne=gain.site.campagne,
                produit=produit,
                nom_client=gain.nom_client,
                tranche_age=options["tranche_age"],
                genre=options["genre"],
                intention_achat=options["intention_achat"],
                a_achete=True,
            )
            # auto_now_add ignore toute valeur passée à create() : on recale
            # la date après coup via update(), qui ne déclenche pas save().
            Degustation.objects.filter(id=degustation.id).update(created_at=gain.created_at)
            degustation.refresh_from_db()

            vente = Vente.objects.create(
                degustation=degustation,
                hotesse=gain.hotesse,
                site=gain.site,
                produit=produit,
                conditionnement=options["conditionnement"],
                quantite=options["quantite"],
                type_vente=Vente.TypeVente.NORMAL,
                nom_client=gain.nom_client,
            )
            Vente.objects.filter(id=vente.id).update(created_at=gain.created_at)

            gain.degustation = degustation
            gain.save(update_fields=["degustation"])

        self.stdout.write(self.style.SUCCESS(
            f"Créé : degustation={degustation.id}, vente={vente.id} — liées au gain {gain.id}."
        ))
