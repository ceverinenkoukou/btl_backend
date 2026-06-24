import uuid
import datetime
from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator
from django.contrib.auth.models import PermissionsMixin, AbstractBaseUser, BaseUserManager
from btl.core.models import BaseModel, SoftDeleteManager


class RemoteUserManager(BaseUserManager, SoftDeleteManager):
    
    def get_queryset(self):
        # On s'assure de conserver le comportement du SoftDeleteManager
        # pour filtrer les utilisateurs masqués par défaut
        return super().get_queryset().filter(is_deleted=False)

    def create_user(self, email, username=None, password=None, **extra_fields):
        if not email:
            raise ValueError('Les utilisateurs doivent avoir une adresse email')
        
        email = self.normalize_email(email)
        # Gestion du username optionnel si on se connecte par email
        if not username:
            username = email.split('@')[0]
            
        user = self.model(
            username=username,
            email=email,
            **extra_fields
        )
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, username=None, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)
        extra_fields.setdefault('role', RemoteUser.Roles.ADMIN)
        extra_fields.setdefault('is_password_changed', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError('Le superutilisateur doit avoir is_staff=True.')
        if extra_fields.get('is_superuser') is not True:
            raise ValueError('Le superutilisateur doit avoir is_superuser=True.')

        return self.create_user(email, username, password, **extra_fields)
class RemoteUser(AbstractBaseUser, PermissionsMixin, BaseModel):
    class Roles(models.TextChoices):
        HOTESSES = "Hotesse", "Hôtesse"
        ENTREPRISES = "Entreprise", "Entreprise"
        SUPERVISEUR = "Superviseur", "Superviseur"
        ADMIN = "Administrateur", "Administrateur"
        NON_DEFINI = "Non defini", "Non défini"

    username = models.CharField(max_length=150, unique=True, blank=True, null=True)
    email = models.EmailField(unique=True)
    name = models.CharField(max_length=255)

    role = models.CharField(
        max_length=20,
        choices=Roles.choices,
        default=Roles.NON_DEFINI,
    )

    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_password_changed = models.BooleanField(
        default=False,
        help_text="Indique si l'utilisateur a changé son mot de passe provisoire."
    )

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['name']

    objects = RemoteUserManager()

    def __str__(self):
        return f"{self.email} ({self.role})"


class Entreprise(BaseModel):
    user = models.OneToOneField(
        RemoteUser,
        on_delete=models.CASCADE,
        related_name='entreprise_profile',
        limit_choices_to={'role': RemoteUser.Roles.ENTREPRISES}
    )
    nom_commercial = models.CharField(max_length=255)
    telephone = models.CharField(max_length=20, blank=True, null=True)
    adresse = models.TextField(blank=True, null=True)

    # --- Branding ---
    couleur_primaire = models.CharField(
        max_length=7, default='#6366f1',
        help_text="Couleur principale (hex, ex: #6366f1)"
    )
    couleur_secondaire = models.CharField(
        max_length=7, default='#8b5cf6',
        help_text="Couleur secondaire (hex, ex: #8b5cf6)"
    )
    logo_url = models.TextField(blank=True, null=True, help_text="Logo de l'entreprise (URL ou base64 data URI)")

    def __str__(self):
        return self.nom_commercial


class Produit(BaseModel):
    class TypeConditionnement(models.TextChoices):
        UNITE = 'UNITE', "À l'unité / Détail"
        PACK  = 'PACK',  'En Pack'

    entreprise = models.ForeignKey(Entreprise, on_delete=models.CASCADE, related_name='produits')
    nom = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)
    type_conditionnement = models.CharField(
        max_length=10,
        choices=TypeConditionnement.choices,
        default=TypeConditionnement.UNITE,
    )
    prix_indicatif = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)

    def __str__(self):
        return f"{self.nom} — {self.get_type_conditionnement_display()} ({self.entreprise.nom_commercial})"


class Goodie(BaseModel):
    entreprise = models.ForeignKey(Entreprise, on_delete=models.CASCADE, related_name='goodies')
    campagne = models.ForeignKey(
        'Campagne',
        on_delete=models.CASCADE,
        related_name='goodies',
        null=True,
        blank=True
    )
    nom = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)
    
    # Produit associé (ex: la boisson offerte avec le goodie)
    produit_associe = models.ForeignKey(
        Produit,
        on_delete=models.SET_NULL,
        related_name='goodies_offerts',
        null=True,
        blank=True,
        help_text="Produit offert avec ce goodie (ex: boisson)"
    )
    quantite_produit_associe = models.PositiveIntegerField(
        default=1,
        help_text="Quantité du produit associé à offrir avec ce goodie"
    )
    # quantite_initiale = models.PositiveIntegerField(default=0, help_text="Stock initial de ce goodie pour la campagne")

    def __str__(self):
        campagne_str = f" - {self.campagne.nom}" if self.campagne else ""
        return f"{self.nom} ({self.entreprise.nom_commercial}{campagne_str})"


class Campagne(BaseModel):

    class TypeCampagne(models.TextChoices):
        DEGUSTATION = "DEGUSTATION", "Dégustation"
        VENTE = "VENTE", "Vente"
        DEGUSTATION_VENTE = "DEGUSTATION_VENTE", "Dégustation-Vente"

    class TypeRecompense(models.TextChoices):
        AUCUNE = "AUCUNE", "Aucune"
        GOODIES = "GOODIES", "Goodies (Roue de la fortune)"
        PROMOTIONS = "PROMOTIONS", "Promotions (Produits offerts)"
    
    entreprise = models.ForeignKey(
        Entreprise,
        on_delete=models.CASCADE,
        related_name='campagnes'
    )
    nom = models.CharField(max_length=255)
    
    # --- Nouveaux Champs de Configuration ---
    type_campagne = models.CharField(
        max_length=20,
        choices=TypeCampagne.choices,
        default=TypeCampagne.DEGUSTATION_VENTE,
        help_text="Détermine les indicateurs et formulaires affichés sur les Dashboards."
    )
    type_recompense = models.CharField(
        max_length=20,
        choices=TypeRecompense.choices,
        default=TypeRecompense.AUCUNE,
        help_text="Définit si la campagne implique des goodies ou des mécaniques promotionnelles."
    )

    note_gout_active = models.BooleanField(
        default=False,
        help_text="Active la saisie de la note du goût dans le formulaire de dégustation"
    )
    note_gout_max = models.PositiveSmallIntegerField(
        default=5,
        choices=[(5, '1 à 5'), (10, '1 à 10')],
        help_text="Échelle de notation du goût"
    )
    note_ambiance_active = models.BooleanField(
        default=False,
        help_text="Active la saisie de la note d'ambiance dans le formulaire de dégustation"
    )
    note_ambiance_max = models.PositiveSmallIntegerField(
        default=5,
        choices=[(5, '1 à 5'), (10, '1 à 10')],
        help_text="Échelle de notation de l'ambiance"
    )

    date_debut = models.DateField()
    date_fin = models.DateField()
    description = models.TextField(blank=True, null=True)
    
    # Ces objectifs peuvent devenir optionnels ou requis selon le type_campagne choisi
    objectif_degustations = models.PositiveIntegerField(null=True, blank=True)
    objectif_ventes = models.PositiveIntegerField(null=True, blank=True)

    superviseurs = models.ManyToManyField(
        RemoteUser,
        limit_choices_to={'role': RemoteUser.Roles.SUPERVISEUR},
        related_name='campagnes_supervisees',
        blank=True
    )
    hotesses = models.ManyToManyField(
        RemoteUser,
        limit_choices_to={'role': RemoteUser.Roles.HOTESSES},
        related_name='campagnes_assignees',
        blank=True
    )
    produits = models.ManyToManyField(Produit, related_name='campagnes', blank=True)

    def get_produits_disponibles(self):
        """Produits sélectionnés sur la campagne, sinon tous ceux de l'entreprise."""
        campagne_produits = self.produits.all()
        if campagne_produits.exists():
            return campagne_produits
        return self.entreprise.produits.all()

    def __str__(self):
        return f"{self.nom} - {self.entreprise.nom_commercial} ({self.get_type_campagne_display()})"
class Site(BaseModel):
    campagne = models.ForeignKey(
        Campagne,
        on_delete=models.CASCADE,
        related_name='sites'
    )
    nom = models.CharField(max_length=255)
    ville = models.CharField(max_length=100, default="Libreville")
    emplacement_precis = models.CharField(max_length=255, blank=True, null=True)

    superviseurs = models.ManyToManyField(
        RemoteUser,
        limit_choices_to={'role': RemoteUser.Roles.SUPERVISEUR},
        related_name='sites_supervises',
        blank=True
    )
    hotesses = models.ManyToManyField(
        RemoteUser,
        limit_choices_to={'role': RemoteUser.Roles.HOTESSES},
        related_name='sites_assignes',
        blank=True
    )
    goodies = models.ManyToManyField(Goodie, through='StockGoodieSite', related_name='sites')

    def __str__(self):
        return f"{self.nom} ({self.campagne.nom})"


class StockGoodieSite(BaseModel):
    site = models.ForeignKey(Site, on_delete=models.CASCADE, related_name='stocks_goodies')
    goodie = models.ForeignKey(Goodie, on_delete=models.CASCADE, related_name='stocks_sites')

    quantite_initiale = models.PositiveIntegerField(default=0)
    quantite_restante = models.PositiveIntegerField(default=0)

    class Meta:
        unique_together = ('site', 'goodie')

    def __str__(self):
        return f"{self.goodie.nom} sur {self.site.nom} ({self.quantite_restante}/{self.quantite_initiale})"

    def distribuer(self, quantite=1):
        """Méthode pratique pour décompter le stock lors d'un gain"""
        if self.quantite_restante >= quantite:
            self.quantite_restante -= quantite
            self.save()
            return True
        return False


class Degustation(BaseModel):
    class TrancheAge(models.TextChoices):
        MOINS_18 = 'MOINS_18', '-18 ans'
        ADO_JEUNE = '18_25', '18-25 ans'
        ADULTE_JEUNE = '26_35', '26-35 ans'
        ADULTE = '36_50', '36-50 ans'
        SENIOR = 'PLUS_50', '+50 ans'

    class IntentionAchat(models.TextChoices):
        FAIBLE = 'FAIBLE', 'Faible'
        MOYENNE = 'MOYENNE', 'Moyenne'
        ELEVEE = 'ELEVEE', 'Élevée'

    class Genre(models.TextChoices):
        HOMME = 'HOMME', 'Homme'
        FEMME = 'FEMME', 'Femme'

    hotesse = models.ForeignKey(
        'RemoteUser',
        on_delete=models.CASCADE,
        related_name='degustations_effectuees',
        limit_choices_to={'role': 'Hotesse'}
    )
    site = models.ForeignKey('Site', on_delete=models.CASCADE, related_name='degustations')
    campagne = models.ForeignKey('Campagne', on_delete=models.CASCADE, related_name='degustations')
    produit = models.ForeignKey('Produit', on_delete=models.CASCADE, related_name='degustations')

    nom_client = models.CharField(max_length=150, blank=True, null=True, help_text="Optionnel ou Prénom")
    tranche_age = models.CharField(max_length=20, choices=TrancheAge.choices)
    genre = models.CharField(
        max_length=10, choices=Genre.choices, null=True, blank=True,
        help_text="Genre du client (Homme/Femme) — nullable pour compatibilité avec les anciennes saisies"
    )

    note_gout = models.PositiveSmallIntegerField(
        null=True, blank=True,
        help_text="Note du goût (configurable par campagne, null si non activé)",
        validators=[MinValueValidator(0), MaxValueValidator(10)]
    )
    note_ambiance = models.PositiveSmallIntegerField(
        null=True, blank=True,
        help_text="Note d'ambiance (configurable par campagne, null si non activé)",
        validators=[MinValueValidator(0), MaxValueValidator(10)]
    )
    intention_achat = models.CharField(max_length=20, choices=IntentionAchat.choices)

    a_achete = models.BooleanField(default=False)

    def __str__(self):
        return f"Dégustation {self.produit.nom} par {self.hotesse.name} sur {self.site.nom}"


class Vente(BaseModel):
    class TypeConditionnement(models.TextChoices):
        UNITE = 'UNITE', "À l'unité"
        PACK = 'PACK', 'En Pack'
    
    class TypeVente(models.TextChoices):
        NORMAL = 'NORMAL', "Vente normale"
        GRATUIT = 'GRATUIT', "Offert avec goodie"
        PROMOTION = 'PROMOTION', "Offert via promotion"

    degustation = models.OneToOneField(
        Degustation,
        on_delete=models.CASCADE,
        related_name='vente_associee',
        null=True, blank=True
    )

    hotesse = models.ForeignKey('RemoteUser', on_delete=models.CASCADE, related_name='ventes')
    site = models.ForeignKey('Site', on_delete=models.CASCADE, related_name='ventes')
    produit = models.ForeignKey('Produit', on_delete=models.CASCADE, related_name='ventes')

    conditionnement = models.CharField(max_length=10, choices=TypeConditionnement.choices)
    quantite = models.PositiveIntegerField(default=1)
    type_vente = models.CharField(max_length=10, choices=TypeVente.choices, default=TypeVente.NORMAL)
    nom_client = models.CharField(max_length=150, blank=True, null=True, help_text="Optionnel ou Prénom")

    @property
    def prix_total(self):
        try:
            prix = SiteProduitPrix.objects.get(site=self.site, produit=self.produit).prix
        except Exception:
            prix = self.produit.prix_indicatif
        if prix:
            return prix * self.quantite
        return None

    def __str__(self):
        return f"Vente {self.conditionnement} ({self.quantite}) - {self.produit.nom}"


class Promotion(BaseModel):
    """Règle promotionnelle liée à une campagne de type PROMOTIONS."""

    class TypePromotion(models.TextChoices):
        OFFERT  = "OFFERT",  "Produit offert"
        GAGNE   = "GAGNE",   "À gagner / Bon cadeau"
        TIRAGE  = "TIRAGE",  "Tirage à la roue"

    campagne = models.ForeignKey(
        Campagne, on_delete=models.CASCADE, related_name='promotions'
    )
    sites = models.ManyToManyField(
        'Site',
        related_name='promotions_ciblees',
        blank=True,
        help_text="Sites ciblés par l'offre. Vide = offre disponible sur tous les sites de la campagne."
    )
    type_promotion = models.CharField(
        max_length=10, choices=TypePromotion.choices, default=TypePromotion.OFFERT
    )
    conditionnement = models.CharField(
        max_length=10,
        choices=Produit.TypeConditionnement.choices,
        default=Produit.TypeConditionnement.UNITE,
        help_text="Conditionnement requis pour déclencher la promotion : unité ou pack"
    )
    quantite_requise = models.PositiveIntegerField(
        default=1, help_text="Nombre de produits à acheter pour déclencher la promotion"
    )
    quantite_offerte = models.PositiveIntegerField(
        default=1, help_text="Quantité de produits offerts / lots remis lors du déclenchement"
    )
    recompense_description = models.CharField(
        max_length=255, help_text="Ex: 1 produit offert, bon cadeau Fnac…"
    )
    is_active = models.BooleanField(default=True)
    goodies = models.ManyToManyField(
        'Goodie',
        related_name='promotions',
        blank=True,
        help_text="Goodies disponibles sur la roue pour cette offre promotionnelle"
    )

    def __str__(self):
        return f"Acheter {self.quantite_requise} → {self.recompense_description} ({self.campagne.nom})"
    
class GainGoodie(BaseModel):
    degustation = models.OneToOneField(
        Degustation, on_delete=models.CASCADE, related_name='gain_goodie', null=True, blank=True
    )
    promotion = models.ForeignKey(
        Promotion, on_delete=models.CASCADE, related_name='gains_goodies', null=True, blank=True
    )
    site = models.ForeignKey(Site, on_delete=models.CASCADE, related_name='gains_goodies')
    goodie = models.ForeignKey(Goodie, on_delete=models.CASCADE, related_name='gains_sites')
    hotesse = models.ForeignKey(
        'RemoteUser',
        on_delete=models.SET_NULL,
        related_name='gains_goodies_commandes',
        null=True,
        blank=True,
        help_text="Utilisateur connecté ayant enregistré le gain"
    )
    
    # Enregistrement du produit associé au goodie au moment du gain (snapshot)
    produit_associe = models.ForeignKey(
        Produit, 
        on_delete=models.SET_NULL, 
        related_name='gains_produits_associes',
        null=True, 
        blank=True,
        help_text="Produit associé offert avec ce goodie"
    )
    quantite_produit = models.PositiveIntegerField(
        default=1,
        help_text="Quantité du produit associé remportée avec ce goodie"
    )
    
    # Nom du client (optionnel)
    nom_client = models.CharField(
        max_length=150, blank=True, null=True,
        help_text="Prénom du client bénéficiaire (optionnel)"
    )

    def __str__(self):
        source = self.degustation if self.degustation else self.promotion
        return f"Gain de {self.goodie.nom} sur {self.site.nom} ({source})"

    class Meta:
        constraints = [
            models.UniqueConstraint(
                fields=['degustation', 'site', 'goodie'],
                condition=models.Q(degustation__isnull=False),
                name='unique_gaingoodie_per_degustation'
            )
        ]

    def distribuer(self, quantite=1):
        stock = StockGoodieSite.objects.get(site=self.site, goodie=self.goodie)
        stock.distribuer(quantite)
        return stock

    def distribuer_all(self):
        stock = StockGoodieSite.objects.get(site=self.site, goodie=self.goodie)
        stock.distribuer(stock.quantite_restante)
        return stock

    def get_quantite_restante(self):
        stock = StockGoodieSite.objects.get(site=self.site, goodie=self.goodie)
        return stock.quantite_restante

    def get_quantite_initiale(self):
        stock = StockGoodieSite.objects.get(site=self.site, goodie=self.goodie)
        return stock.quantite_initiale

    def get_quantite_total(self):
        stock = StockGoodieSite.objects.get(site=self.site, goodie=self.goodie)
        return stock.quantite_initiale

class GainPromotion(BaseModel):
    """
    Enregistre chaque fois qu'une hôtesse déclenche une règle promotionnelle.
    Sert de base pour les statistiques : gains par règle, par site, par hôtesse.
    """
    promotion = models.ForeignKey(
        Promotion,
        on_delete=models.CASCADE,
        related_name='gains',
        help_text="La règle promotionnelle déclenchée"
    )
    hotesse = models.ForeignKey(
        RemoteUser,
        on_delete=models.CASCADE,
        related_name='gains_promotions',
        limit_choices_to={'role': RemoteUser.Roles.HOTESSES}
    )
    site = models.ForeignKey(
        'Site',
        on_delete=models.CASCADE,
        related_name='gains_promotions'
    )
    campagne = models.ForeignKey(
        Campagne,
        on_delete=models.CASCADE,
        related_name='gains_promotions'
    )
    # Nombre de produits concernés par ce gain (ex: 9 bières pour 1 ticket)
    quantite_produits_concernes = models.PositiveIntegerField(
        default=1,
        help_text="Nombre de produits achetés pour déclencher ce gain (= quantite_requise de la règle)"
    )
    nom_client = models.CharField(
        max_length=150, blank=True, null=True,
        help_text="Prénom du client bénéficiaire (optionnel)"
    )
    # Tranche d'âge du client (optionnel, pour statistiques)
    tranche_age = models.CharField(
        max_length=20, blank=True, null=True,
        choices=Degustation.TrancheAge.choices,
        help_text="Tranche d'âge du client (optionnel)"
    )

    def __str__(self):
        return (
            f"{self.hotesse.name} → {self.promotion.recompense_description} "
            f"({self.quantite_produits_concernes} produits) sur {self.site.nom}"
        )


class SiteProduitPrix(BaseModel):
    """Prix de vente effectif d'un produit sur un site donné.
    Permet d'écraser le prix_indicatif du produit pour le calcul du CA."""
    site = models.ForeignKey(Site, on_delete=models.CASCADE, related_name='prix_produits')
    produit = models.ForeignKey(Produit, on_delete=models.CASCADE, related_name='prix_sites')
    prix = models.DecimalField(max_digits=10, decimal_places=2)

    class Meta:
        unique_together = ('site', 'produit')

    def __str__(self):
        return f"{self.produit.nom} sur {self.site.nom} → {self.prix} FCFA"


class ObjectifSite(BaseModel):
    """Objectif quotidien ou de campagne assigné à une hôtesse sur un site."""
    site = models.ForeignKey(Site, on_delete=models.CASCADE, related_name='objectifs')
    hotesse = models.ForeignKey(
        RemoteUser,
        on_delete=models.CASCADE,
        related_name='objectifs_sites',
        limit_choices_to={'role': RemoteUser.Roles.HOTESSES}
    )
    date = models.DateField(help_text="Date à laquelle l'objectif s'applique (ou date de début de période)")
    objectif_degustations = models.PositiveIntegerField(default=0)
    objectif_ventes = models.PositiveIntegerField(default=0)

    class Meta:
        unique_together = ('site', 'hotesse', 'date')

    def __str__(self):
        return f"Objectif {self.hotesse.name} sur {self.site.nom} le {self.date}"


class RapportJournalier(BaseModel):
    """Rapport journalier par hôtesse / site, généré automatiquement chaque soir."""
    site = models.ForeignKey(Site, on_delete=models.CASCADE, related_name='rapports_journaliers')
    hotesse = models.ForeignKey(
        RemoteUser,
        on_delete=models.CASCADE,
        related_name='rapports_journaliers',
        limit_choices_to={'role': RemoteUser.Roles.HOTESSES}
    )
    date = models.DateField()

    # ── Données calculées automatiquement (Celery, chaque soir) ──────
    nb_degustations = models.PositiveIntegerField(default=0)
    nb_ventes = models.PositiveIntegerField(default=0)
    nb_goodies = models.PositiveIntegerField(default=0)
    chiffre_affaires = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    heure_arrivee = models.TimeField(null=True, blank=True, help_text="Reprise automatique du pointage d'arrivée")
    heure_depart = models.TimeField(null=True, blank=True, help_text="Reprise automatique du pointage de départ")

    # ── Données saisies manuellement (superviseur/admin) ────────────
    stock_initial_magasin = models.PositiveIntegerField(
        null=True, blank=True,
        help_text="Stock produit en magasin en début de journée (saisie manuelle)"
    )
    nombre_personnes_touchees = models.PositiveIntegerField(
        null=True, blank=True,
        help_text="Nombre total de personnes abordées/touchées dans la journée (saisie manuelle)"
    )
    avis_consommateurs = models.TextField(
        blank=True, null=True,
        help_text="Avis qualitatif des consommateurs sur le produit (saisie manuelle)"
    )
    observation_generale = models.TextField(
        blank=True, null=True,
        help_text="Observation générale de la journée (saisie manuelle)"
    )

    class Meta:
        unique_together = ('site', 'hotesse', 'date')

    def __str__(self):
        return f"Rapport {self.hotesse.name} — {self.site.nom} — {self.date}"


class RapportJournalierConfig(BaseModel):
    """Configuration du bulletin journalier par campagne. Le superviseur choisit les sections à inclure."""

    campagne = models.OneToOneField(
        Campagne, on_delete=models.CASCADE, related_name='rapport_journalier_config'
    )
    configure_par = models.ForeignKey(
        RemoteUser, on_delete=models.SET_NULL, null=True, blank=True,
        related_name='configs_rapports_journaliers',
        help_text="Superviseur ou admin ayant défini cette configuration"
    )

    show_pointage = models.BooleanField(default=True, help_text="Section : Heures d'arrivée / départ")
    show_stock = models.BooleanField(default=True, help_text="Section : Stock magasin en début de journée")
    show_ventes_detail = models.BooleanField(default=True, help_text="Section : Détail des ventes (promo / hors promo)")
    show_ugs_recus = models.BooleanField(default=True, help_text="Section : UGs (goodies) reçus sur le site")
    show_ugs_distribues = models.BooleanField(default=True, help_text="Section : UGs (goodies) distribués")
    show_ugs_restants = models.BooleanField(default=True, help_text="Section : UGs (goodies) restants")
    show_degustation = models.BooleanField(default=True, help_text="Section : Détail des dégustations du jour")
    show_genre = models.BooleanField(default=True, help_text="Section : Répartition par genre (Hommes/Femmes) des dégustations")
    show_personnes_touchees = models.BooleanField(default=True, help_text="Section : Nombre de personnes touchées")
    show_avis_consommateurs = models.BooleanField(default=True, help_text="Section : Avis des consommateurs")
    show_observation_generale = models.BooleanField(default=True, help_text="Section : Observation générale")

    def __str__(self):
        return f"Config rapport journalier — {self.campagne.nom}"

    class Meta:
        verbose_name = "Configuration rapport journalier"
        verbose_name_plural = "Configurations rapports journaliers"


class RapportConfig(BaseModel):
    """Configuration du rapport PDF par campagne. Le superviseur choisit les sections/colonnes à inclure."""

    campagne = models.OneToOneField(
        Campagne, on_delete=models.CASCADE, related_name='rapport_config'
    )
    configure_par = models.ForeignKey(
        RemoteUser, on_delete=models.SET_NULL, null=True, blank=True,
        related_name='configs_rapports',
        help_text="Superviseur ou admin ayant défini cette configuration"
    )

    # ── En-tête ──────────────────────────────────────────────────
    titre_personnalise = models.CharField(
        max_length=255, blank=True, null=True,
        help_text="Titre personnalisé affiché sur la page de couverture (remplace le nom de la campagne)"
    )
    sous_titre_personnalise = models.CharField(
        max_length=255, blank=True, null=True,
        help_text="Sous-titre personnalisé (ex: 'Rapport Confidentiel')"
    )

    # ── KPIs de synthèse ─────────────────────────────────────────
    show_kpi_degustations = models.BooleanField(default=True, help_text="Afficher le KPI consommations")
    show_kpi_ventes = models.BooleanField(default=True, help_text="Afficher le KPI distributions/ventes")
    show_kpi_ca = models.BooleanField(default=True, help_text="Afficher le KPI chiffre d'affaires")
    show_kpi_goodies = models.BooleanField(default=True, help_text="Afficher le KPI goodies distribués")
    show_kpi_sites = models.BooleanField(default=True, help_text="Afficher le KPI nombre de sites actifs")

    # ── Sections du rapport ───────────────────────────────────────
    show_section_offres_promo = models.BooleanField(default=True, help_text="Section : Offres promotionnelles")
    show_section_gains_goodies = models.BooleanField(default=True, help_text="Section : Gains de goodies par site")
    show_section_perf_hotesses = models.BooleanField(default=True, help_text="Section : Performance des hôtesses (rapport interne)")
    show_section_perf_sites = models.BooleanField(default=True, help_text="Section : Performances par site")
    show_section_goodies_par_site = models.BooleanField(default=True, help_text="Section : Goodies distribués par site")
    show_section_offres_par_hotesse = models.BooleanField(default=True, help_text="Section : Offres par hôtesse (rapport interne)")
    show_section_detail_degustations = models.BooleanField(
        default=False,
        help_text="Section : Détail des dégustations — reprend les données saisies par les hôtesses sur le terrain (rapport interne)"
    )
    show_section_horaires_sites = models.BooleanField(
        default=True,
        help_text="Section : Horaires d'ouverture des sites de la campagne"
    )

    # ── Colonnes ──────────────────────────────────────────────────
    show_col_ca = models.BooleanField(default=True, help_text="Colonne : Chiffre d'affaires dans les tableaux")
    show_col_goodies = models.BooleanField(default=True, help_text="Colonne : Goodies dans les tableaux")
    show_col_promo_details = models.BooleanField(default=True, help_text="Colonne : Détails promotionnels (offerts, tickets)")
    show_col_performance = models.BooleanField(default=True, help_text="Colonne : Taux de performance dans les tableaux")

    # ── Colonnes du détail des dégustations (formulaire hôtesse) ──
    show_col_nom_client = models.BooleanField(default=True, help_text="Colonne : Nom du client dans le détail des dégustations")
    show_col_tranche_age = models.BooleanField(default=True, help_text="Colonne : Tranche d'âge du client")
    show_col_intention_achat = models.BooleanField(default=True, help_text="Colonne : Intention d'achat")

    # ── Options générales ─────────────────────────────────────────
    show_logo = models.BooleanField(default=True, help_text="Afficher le logo de l'entreprise")
    show_equipe_hotesses = models.BooleanField(default=True, help_text="Inclure les données individuelles des hôtesses (rapport interne)")
    inclure_notes_sensorielles = models.BooleanField(
        default=False,
        help_text="Inclure les notes de goût et d'ambiance dans le détail des dégustations"
    )

    # ── Observations manuelles ────────────────────────────────────
    show_observations = models.BooleanField(default=True, help_text="Afficher la section Observations dans le rapport")
    observations_manuelles = models.TextField(
        blank=True, null=True,
        help_text="Observations libres ajoutées manuellement par le superviseur, affichées dans le rapport"
    )

    def __str__(self):
        return f"Config rapport — {self.campagne.nom}"

    class Meta:
        verbose_name = "Configuration rapport"
        verbose_name_plural = "Configurations rapports"


class JourAnimation(BaseModel):
    """Définit les jours animés d'une campagne et les horaires d'ouverture/fermeture des sites."""
    campagne = models.ForeignKey(
        Campagne, on_delete=models.CASCADE, related_name='jours_animation'
    )
    site = models.ForeignKey(
        Site, on_delete=models.CASCADE, related_name='horaires',
        null=True, blank=True,
        help_text="Laisser vide pour appliquer à tous les sites de la campagne."
    )
    date = models.DateField(help_text="Date de l'animation")
    heure_ouverture = models.TimeField(default=datetime.time(8, 0))
    heure_fermeture = models.TimeField(default=datetime.time(18, 0))

    class Meta:
        unique_together = ('campagne', 'site', 'date')
        ordering = ['date', 'heure_ouverture']

    def clean(self):
        from django.core.exceptions import ValidationError
        if self.heure_fermeture and self.heure_ouverture and self.heure_fermeture <= self.heure_ouverture:
            raise ValidationError("L'heure de fermeture doit être après l'heure d'ouverture.")
        if self.date and self.campagne_id:
            c = self.campagne
            if self.date < c.date_debut or self.date > c.date_fin:
                raise ValidationError("La date doit être dans la période de la campagne.")

    def __str__(self):
        site_str = f" — {self.site.nom}" if self.site else " (tous les sites)"
        return f"{self.campagne.nom}{site_str} le {self.date} ({self.heure_ouverture:%H:%M}–{self.heure_fermeture:%H:%M})"


class Pointage(BaseModel):
    """Pointage arrivée/départ d'une hôtesse sur un site pour un jour d'animation."""
    hotesse = models.ForeignKey(
        RemoteUser,
        on_delete=models.CASCADE,
        related_name='pointages',
        limit_choices_to={'role': RemoteUser.Roles.HOTESSES},
    )
    site = models.ForeignKey(
        Site, on_delete=models.CASCADE, related_name='pointages'
    )
    jour = models.ForeignKey(
        JourAnimation, on_delete=models.SET_NULL, null=True, blank=True,
        related_name='pointages',
        help_text="Jour d'animation associé (optionnel, pour lier aux horaires prévus)"
    )
    date = models.DateField(help_text="Date du pointage")
    heure_arrivee = models.TimeField(null=True, blank=True, help_text="Heure de pointage à l'arrivée")
    heure_depart = models.TimeField(null=True, blank=True, help_text="Heure de pointage au départ")

    class Meta:
        unique_together = ('hotesse', 'site', 'date')
        ordering = ['-date', 'heure_arrivee']
        verbose_name = "Pointage hôtesse"
        verbose_name_plural = "Pointages hôtesses"

    def __str__(self):
        arr = self.heure_arrivee.strftime('%H:%M') if self.heure_arrivee else '--'
        dep = self.heure_depart.strftime('%H:%M') if self.heure_depart else '--'
        return f"{self.hotesse.name} @ {self.site.nom} le {self.date} ({arr}→{dep})"


class LivraisonGoodiesJour(BaseModel):
    """Goodies livrés sur un site pour une journée d'animation donnée."""
    site = models.ForeignKey(
        Site, on_delete=models.CASCADE, related_name='livraisons_goodies'
    )
    goodie = models.ForeignKey(
        Goodie, on_delete=models.CASCADE, related_name='livraisons'
    )
    date = models.DateField(help_text="Date de la livraison")
    quantite_apportee = models.PositiveIntegerField(
        default=0, help_text="Nombre de goodies apportés sur le site ce jour"
    )
    enregistre_par = models.ForeignKey(
        RemoteUser, on_delete=models.SET_NULL, null=True, blank=True,
        related_name='livraisons_goodies_enregistrees'
    )

    class Meta:
        unique_together = ('site', 'goodie', 'date')
        ordering = ['-date']
        verbose_name = "Livraison goodies (jour)"
        verbose_name_plural = "Livraisons goodies (jour)"

    def __str__(self):
        return f"{self.quantite_apportee}× {self.goodie.nom} → {self.site.nom} le {self.date}"

    @property
    def gains_du_jour(self):
        """Nombre de goodies gagnés par des clients ce jour sur ce site."""
        return GainGoodie.objects.filter(
            site=self.site,
            goodie=self.goodie,
            created_at__date=self.date
        ).count()

    @property
    def restants_du_jour(self):
        return max(0, self.quantite_apportee - self.gains_du_jour)
