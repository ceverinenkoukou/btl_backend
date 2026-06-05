import uuid
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
    nom = models.CharField(max_length=255)
    description = models.TextField(blank=True, null=True)

    def __str__(self):
        return f"{self.nom} ({self.entreprise.nom_commercial})"


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

    note_gout = models.PositiveSmallIntegerField(
        help_text="Note entre 1 et 5",
        validators=[MinValueValidator(1), MaxValueValidator(5)]
    )
    intention_achat = models.CharField(max_length=20, choices=IntentionAchat.choices)

    a_achete = models.BooleanField(default=False)

    def __str__(self):
        return f"Dégustation {self.produit.nom} par {self.hotesse.name} sur {self.site.nom}"


class Vente(BaseModel):
    class TypeConditionnement(models.TextChoices):
        UNITE = 'UNITE', "À l'unité"
        PACK = 'PACK', 'En Pack'

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

    @property
    def prix_total(self):
        if self.produit.prix_indicatif:
            return self.produit.prix_indicatif * self.quantite
        return None

    def __str__(self):
        return f"Vente {self.conditionnement} ({self.quantite}) - {self.produit.nom}"


class Promotion(BaseModel):
    """Règle promotionnelle liée à une campagne de type PROMOTIONS."""

    class TypePromotion(models.TextChoices):
        OFFERT = "OFFERT", "Produit offert"
        GAGNE  = "GAGNE",  "À gagner / Bon cadeau"

    campagne = models.ForeignKey(
        Campagne, on_delete=models.CASCADE, related_name='promotions'
    )
    type_promotion = models.CharField(
        max_length=10, choices=TypePromotion.choices, default=TypePromotion.OFFERT
    )
    quantite_requise = models.PositiveIntegerField(
        default=1, help_text="Nombre de produits à acheter pour déclencher la promotion"
    )
    recompense_description = models.CharField(
        max_length=255, help_text="Ex: 1 produit offert, bon cadeau Fnac…"
    )
    is_active = models.BooleanField(default=True)

    def __str__(self):
        return f"Acheter {self.quantite_requise} → {self.recompense_description} ({self.campagne.nom})"
