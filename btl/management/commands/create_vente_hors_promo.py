from datetime import datetime

from django.core.management.base import BaseCommand, CommandError
from django.db import transaction
from django.db.models import Q

from btl.models import RemoteUser, Site, Produit, Degustation, Vente


def _find_one(queryset, label, value):
    """Recherche insensible à la casse par nom (icontains) ; erreur claire si 0 ou >1 résultat."""
    matches = list(queryset)
    if len(matches) == 0:
        raise CommandError(f"Aucun(e) {label} trouvé(e) pour « {value} ».")
    if len(matches) > 1:
        noms = ", ".join(str(m) for m in matches)
        raise CommandError(f"Plusieurs {label}s correspondent à « {value} » : {noms}. Précise davantage.")
    return matches[0]


class Command(BaseCommand):
    """
    Crée de toutes pièces une Degustation + Vente "hors promo"
    (type_vente=NORMAL) pour un achat qui n'a jamais été enregistré du tout
    (aucune trace en base — ni Degustation ni Vente ni GainGoodie), par
    exemple parce que le formulaire dégustation était indisponible à ce
    moment-là.

    Contrairement à backfill_degustation_for_gain (qui complète un
    GainGoodie existant), cette commande part de zéro : il faut fournir
    tous les éléments à la main (hôtesse, site, produit, date, etc.).
    """

    help = (
        "Crée manuellement une Degustation + Vente hors promo (NORMAL) jamais "
        "enregistrée, à partir d'éléments fournis en argument (aucune trace "
        "existante en base pour ce cas)."
    )

    def add_arguments(self, parser):
        parser.add_argument("--hotesse", type=str, required=True, help="Nom ou email de l'hôtesse (recherche partielle).")
        parser.add_argument("--site", type=str, required=True, help="Nom du site (recherche partielle).")
        parser.add_argument("--campagne", type=str, default=None, help="Nom de la campagne, pour désambiguïser si plusieurs sites portent le même nom.")
        parser.add_argument("--produit", type=str, default=None, help="Nom du produit (recherche partielle).")
        parser.add_argument("--produit-id", type=str, default=None, help="UUID du produit (alternative à --produit).")
        parser.add_argument("--datetime", type=str, required=True, help="Date/heure de la vente, format 'YYYY-MM-DD HH:MM'.")
        parser.add_argument("--tranche-age", type=str, required=True, choices=[c[0] for c in Degustation.TrancheAge.choices])
        parser.add_argument("--genre", type=str, required=True, choices=[c[0] for c in Degustation.Genre.choices])
        parser.add_argument(
            "--intention-achat", type=str, default=Degustation.IntentionAchat.ELEVEE,
            choices=[c[0] for c in Degustation.IntentionAchat.choices],
        )
        parser.add_argument("--conditionnement", type=str, default="UNITE", choices=["UNITE", "PACK"])
        parser.add_argument("--quantite", type=int, default=1)
        parser.add_argument("--nom-client", type=str, default=None)
        parser.add_argument("--dry-run", action="store_true", help="Affiche ce qui serait créé sans rien écrire en base.")

    def handle(self, *args, **options):
        hotesse = _find_one(
            RemoteUser.objects.filter(role=RemoteUser.Roles.HOTESSES).filter(
                Q(name__icontains=options["hotesse"]) | Q(email__icontains=options["hotesse"])
            ),
            "hôtesse", options["hotesse"],
        )

        sites_qs = Site.objects.filter(nom__icontains=options["site"])
        if options["campagne"]:
            sites_qs = sites_qs.filter(campagne__nom__icontains=options["campagne"])
        site = _find_one(sites_qs.select_related("campagne"), "site", options["site"])

        if not site.hotesses.filter(id=hotesse.id).exists():
            self.stdout.write(self.style.WARNING(
                f"Attention : {hotesse.name} n'est pas affectée au site {site.nom} "
                f"(la vente sera créée quand même, mais vérifie que c'est bien ça)."
            ))

        if options["produit_id"]:
            try:
                produit = Produit.objects.get(id=options["produit_id"])
            except Produit.DoesNotExist:
                raise CommandError(f"Produit introuvable : {options['produit_id']}")
        elif options["produit"]:
            produit = _find_one(
                Produit.objects.filter(entreprise=site.campagne.entreprise_id, nom__icontains=options["produit"]),
                "produit", options["produit"],
            )
        else:
            raise CommandError("Fournis --produit (nom) ou --produit-id (UUID).")

        try:
            when = datetime.strptime(options["datetime"], "%Y-%m-%d %H:%M")
        except ValueError:
            raise CommandError("Format --datetime invalide, attendu : 'YYYY-MM-DD HH:MM'.")

        self.stdout.write(
            f"-> Degustation : hôtesse={hotesse.name}, site={site.nom}, campagne={site.campagne.nom}, "
            f"produit={produit.nom}, date={when}, tranche_age={options['tranche_age']}, "
            f"genre={options['genre']}, intention_achat={options['intention_achat']}, "
            f"client={options['nom_client'] or '(non renseigné)'}"
        )
        self.stdout.write(
            f"-> Vente (hors promo) : conditionnement={options['conditionnement']}, quantite={options['quantite']}"
        )

        if options["dry_run"]:
            self.stdout.write(self.style.WARNING("Dry-run — rien écrit."))
            return

        with transaction.atomic():
            degustation = Degustation.objects.create(
                hotesse=hotesse,
                site=site,
                campagne=site.campagne,
                produit=produit,
                nom_client=options["nom_client"],
                tranche_age=options["tranche_age"],
                genre=options["genre"],
                intention_achat=options["intention_achat"],
                a_achete=True,
            )
            Degustation.objects.filter(id=degustation.id).update(created_at=when)

            vente = Vente.objects.create(
                degustation=degustation,
                hotesse=hotesse,
                site=site,
                produit=produit,
                conditionnement=options["conditionnement"],
                quantite=options["quantite"],
                type_vente=Vente.TypeVente.NORMAL,
                nom_client=options["nom_client"],
            )
            Vente.objects.filter(id=vente.id).update(created_at=when)

        self.stdout.write(self.style.SUCCESS(
            f"Créé : degustation={degustation.id}, vente={vente.id}."
        ))
