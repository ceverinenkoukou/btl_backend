"""
Modèles pour les campagnes de type "service" (ex: promotion d'une
application mobile, d'un forfait télécom...) — par opposition aux
campagnes de btl.Campagne qui concernent toujours un Produit physique.

Réutilise Entreprise / Site / RemoteUser de btl (même infrastructure
terrain : mêmes hôtesses, mêmes sites physiques), mais ne touche pas à
Campagne ni à Produit — composition par ForeignKey, pas d'héritage de
modèle ni de GenericForeignKey (cf. décision du 2026-06-28).

CampagneService.campagne_produit_liee permet de rattacher une campagne
service à une campagne produit existante pour une opération "croisée"
(ex: une entreprise télécom qui promeut à la fois des forfaits ET vérifie
les souscriptions à son application, sur les mêmes sites/dates).
"""
from django.db import models

from btl.core.models import BaseModel
from btl.models import Entreprise, Site, RemoteUser, Campagne, Degustation


class Service(BaseModel):
    """
    Le service promu (ex: application MyTelecom, Forfait Internet X).
    Rattaché à l'Entreprise, pas à une CampagneService précise — même
    logique que Produit : défini une fois (à la création de l'entreprise ou
    plus tard), réutilisable par plusieurs campagnes service.
    """

    entreprise = models.ForeignKey(
        Entreprise, on_delete=models.CASCADE, related_name='services'
    )
    nom = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.nom


class CampagneService(BaseModel):
    """Campagne de promotion d'un service (pas de produit physique)."""

    class TypeCampagneService(models.TextChoices):
        SONDAGE = "SONDAGE", "Sondage / vérification de souscription"
        # D'autres types pourront être ajoutés ici à l'avenir, chacun avec
        # son propre modèle d'activité terrain (cf. Sondage ci-dessous) —
        # ne pas transformer ça en modèle générique/polymorphe.

    entreprise = models.ForeignKey(
        Entreprise, on_delete=models.CASCADE, related_name='campagnes_services'
    )
    nom = models.CharField(max_length=255)
    type_campagne_service = models.CharField(
        max_length=20,
        choices=TypeCampagneService.choices,
        default=TypeCampagneService.SONDAGE,
        help_text="Détermine le formulaire et le modèle d'activité terrain utilisés."
    )
    description = models.TextField(blank=True, null=True)
    date_debut = models.DateField()
    date_fin = models.DateField()

    # Services de l'entreprise concernés par cette campagne. Vide = tous les
    # services de l'entreprise sont disponibles (même logique que
    # Campagne.produits / get_produits_disponibles côté produits).
    services = models.ManyToManyField(Service, related_name='campagnes_services', blank=True)
    sites = models.ManyToManyField(Site, related_name='campagnes_services', blank=True)
    superviseurs = models.ManyToManyField(
        RemoteUser,
        limit_choices_to={'role': RemoteUser.Roles.SUPERVISEUR},
        related_name='campagnes_services_supervisees',
        blank=True,
    )
    hotesses = models.ManyToManyField(
        RemoteUser,
        limit_choices_to={'role': RemoteUser.Roles.HOTESSES},
        related_name='campagnes_services_assignees',
        blank=True,
    )

    # Campagne croisée : rattachement optionnel à une campagne produit de btl.
    campagne_produit_liee = models.ForeignKey(
        Campagne,
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name='campagnes_services_liees',
        help_text="Pour une opération croisée produits + services chez la même entreprise."
    )

    is_active = models.BooleanField(default=True)

    def get_services_disponibles(self):
        """Services sélectionnés sur la campagne, sinon tous ceux de l'entreprise."""
        campagne_services = self.services.all()
        if campagne_services.exists():
            return campagne_services
        return self.entreprise.services.all()

    def __str__(self):
        return f"{self.nom} ({self.entreprise.nom_commercial})"


class ObjectifCampagneService(BaseModel):
    """
    Objectif libre défini à la création de la campagne — pas de champs figés
    comme objectif_degustations/objectif_ventes sur Campagne, car chaque
    entreprise de service définit ses propres indicateurs (ex: "Sondages
    réalisés", "Souscriptions", "Contacts qualifiés"...).
    """
    campagne_service = models.ForeignKey(
        CampagneService, on_delete=models.CASCADE, related_name='objectifs'
    )
    site = models.ForeignKey(
        Site, on_delete=models.CASCADE, null=True, blank=True, related_name='objectifs_services',
        help_text="Objectif par site si renseigné, sinon objectif global de la campagne."
    )
    nom = models.CharField(max_length=150, help_text="Ex: Sondages réalisés, Souscriptions…")
    valeur_cible = models.PositiveIntegerField()

    def __str__(self):
        return f"{self.nom} = {self.valeur_cible} ({self.campagne_service.nom})"


class Sondage(BaseModel):
    """
    Interaction terrain pour une campagne de type SONDAGE : profil client,
    vérification d'une souscription existante, et conversion éventuelle sur
    place — même schéma en deux temps que Degustation -> Vente côté produits.
    """

    campagne_service = models.ForeignKey(
        CampagneService, on_delete=models.CASCADE, related_name='sondages'
    )
    site = models.ForeignKey(Site, on_delete=models.CASCADE, related_name='sondages')
    hotesse = models.ForeignKey(
        RemoteUser,
        on_delete=models.CASCADE,
        related_name='sondages_effectues',
        limit_choices_to={'role': RemoteUser.Roles.HOTESSES},
    )
    service = models.ForeignKey(Service, on_delete=models.CASCADE, related_name='sondages')

    nom_client = models.CharField(max_length=150, blank=True, null=True)
    # Réutilise les mêmes choices que Degustation plutôt que de les dupliquer.
    tranche_age = models.CharField(max_length=20, choices=Degustation.TrancheAge.choices, blank=True, null=True)
    genre = models.CharField(max_length=10, choices=Degustation.Genre.choices, blank=True, null=True)

    possede_deja = models.BooleanField(
        default=False, help_text="Le client avait-il déjà le service avant l'échange ?"
    )
    a_souscrit = models.BooleanField(
        default=False, help_text="A-t-il souscrit / installé le service suite à l'échange (si possede_deja=False) ?"
    )

    def __str__(self):
        return f"Sondage {self.service.nom} par {self.hotesse.name} sur {self.site.nom}"


class RecompenseService(BaseModel):
    """Lot à gagner pour une campagne service (ex: forfait communication, crédit internet)."""

    campagne_service = models.ForeignKey(
        CampagneService, on_delete=models.CASCADE, related_name='recompenses'
    )
    nom = models.CharField(max_length=255, help_text="Ex: Forfait 5Go, Crédit communication 2000F")
    quantite_totale = models.PositiveIntegerField(default=0)
    quantite_distribuee = models.PositiveIntegerField(default=0)

    @property
    def quantite_restante(self):
        return max(0, self.quantite_totale - self.quantite_distribuee)

    def distribuer(self, quantite=1):
        """Décompte le stock si suffisant ; retourne False sinon (même contrat que StockGoodieSite.distribuer)."""
        if self.quantite_restante < quantite:
            return False
        self.quantite_distribuee += quantite
        self.save(update_fields=['quantite_distribuee'])
        return True

    def __str__(self):
        return f"{self.nom} ({self.quantite_restante} restant)"


class GainRecompenseService(BaseModel):
    """Enregistre qu'une hôtesse a remis une récompense à un client."""

    sondage = models.ForeignKey(
        Sondage, on_delete=models.SET_NULL, null=True, blank=True, related_name='gain'
    )
    recompense = models.ForeignKey(
        RecompenseService, on_delete=models.CASCADE, related_name='gains'
    )
    site = models.ForeignKey(Site, on_delete=models.CASCADE, related_name='gains_recompenses_services')
    hotesse = models.ForeignKey(
        RemoteUser,
        on_delete=models.CASCADE,
        related_name='gains_recompenses_services',
        limit_choices_to={'role': RemoteUser.Roles.HOTESSES},
    )
    nom_client = models.CharField(max_length=150, blank=True, null=True)

    def __str__(self):
        return f"Gain {self.recompense.nom} sur {self.site.nom}"
