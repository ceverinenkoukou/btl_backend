from datetime import timedelta

from django.core.management.base import BaseCommand
from django.db import transaction

from btl.models import GainPromotion, Promotion, Vente


class Command(BaseCommand):
    """
    Crée rétroactivement les Ventes PROMOTION manquantes pour les gains de
    type GAGNE (achat X → 1 offert + tirage).

    Avant le correctif de juillet 2026, seul le type OFFERT créait une Vente
    PROMOTION pour le produit offert. Les gains GAGNE n'enregistraient que la
    Vente NORMAL (produits achetés), laissant le produit offert hors stats.

    Ce script détecte les GainPromotion GAGNE sans Vente PROMOTION associée et
    les crée avec le bon timestamp historique.

    Sans --apply : aperçu seul, aucune écriture.
    Avec --apply  : crée les ventes manquantes.
    """

    help = (
        "Crée les Ventes PROMOTION manquantes pour les gains GAGNE "
        "(produit offert non enregistré avant le correctif). "
        "Sans --apply, affiche un aperçu sans écrire."
    )

    def add_arguments(self, parser):
        parser.add_argument(
            "--apply",
            action="store_true",
            help="Crée réellement les Ventes PROMOTION (sinon : aperçu seul).",
        )
        parser.add_argument(
            "--window-seconds",
            type=int,
            default=30,
            help="Fenêtre temporelle pour détecter une Vente PROMOTION déjà présente (défaut: 30s).",
        )

    def handle(self, *args, **options):
        apply_changes = options["apply"]
        window = timedelta(seconds=options["window_seconds"])

        if not apply_changes:
            self.stdout.write(self.style.WARNING(
                "Mode aperçu — aucune écriture. Relancer avec --apply pour créer les ventes."
            ))

        gains = (
            GainPromotion.objects
            .filter(
                promotion__type_promotion=Promotion.TypePromotion.GAGNE,
                vente_achat__isnull=False,
            )
            .select_related("promotion", "vente_achat", "hotesse", "site")
            .order_by("created_at")
        )

        total = gains.count()
        self.stdout.write(f"Gains GAGNE avec vente_achat liée : {total}")

        crees = 0
        ignores = 0

        for gain in gains:
            vente_achat = gain.vente_achat

            # Vérifie si une Vente PROMOTION existe déjà dans la fenêtre temporelle
            # (cas où le correctif a déjà été appliqué pour ce gain)
            deja_presente = Vente.objects.filter(
                hotesse=gain.hotesse,
                site=gain.site,
                produit=vente_achat.produit,
                conditionnement=vente_achat.conditionnement,
                type_vente=Vente.TypeVente.PROMOTION,
                created_at__gte=gain.created_at - window,
                created_at__lte=gain.created_at + window,
            ).exists()

            if deja_presente:
                ignores += 1
                self.stdout.write(
                    f"  SKIP {gain.id} ({gain.created_at:%Y-%m-%d %H:%M:%S}) "
                    f"hôtesse={gain.hotesse.name} site={gain.site.nom} "
                    f"— Vente PROMOTION déjà présente"
                )
                continue

            self.stdout.write(
                f"  {'CRÉER' if apply_changes else 'À créer'} "
                f"{gain.id} ({gain.created_at:%Y-%m-%d %H:%M:%S}) "
                f"hôtesse={gain.hotesse.name} site={gain.site.nom} "
                f"produit={vente_achat.produit} "
                f"qty={gain.promotion.quantite_offerte} "
                f"client={gain.nom_client or '(non renseigné)'}"
            )

            if apply_changes:
                with transaction.atomic():
                    vente = Vente.objects.create(
                        hotesse=gain.hotesse,
                        site=gain.site,
                        produit=vente_achat.produit,
                        conditionnement=vente_achat.conditionnement,
                        quantite=gain.promotion.quantite_offerte,
                        type_vente=Vente.TypeVente.PROMOTION,
                        nom_client=gain.nom_client,
                    )
                    # Repositionne le timestamp au moment historique du gain
                    Vente.objects.filter(pk=vente.pk).update(
                        created_at=gain.created_at,
                        updated_at=gain.updated_at,
                    )
            crees += 1

        self.stdout.write("")
        self.stdout.write(self.style.SUCCESS(
            f"{'Créées' if apply_changes else 'À créer'} : {crees} | "
            f"Déjà présentes (ignorées) : {ignores} | "
            f"Total gains GAGNE : {total}"
        ))
