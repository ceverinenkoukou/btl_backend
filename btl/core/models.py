import uuid

from django.db import models
from django.utils import timezone
from simple_history.models import HistoricalRecords


class SoftDeleteManager(models.Manager):
    """
    Manager personnalisé pour filtrer par défaut les objets "soft-deleted".
    """

    def get_queryset(self):
        # Par défaut, on ne récupère que les objets non supprimés
        return super().get_queryset().filter(is_deleted=False)

    def all_with_deleted(self):
        # Méthode pour tout récupérer (utile pour l'admin)
        return super().get_queryset()


class BaseModel(models.Model):
    """
    Modèle de base abstrait avec UUID, Timestamps, Soft Delete et Historique.
    """

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)

    # Timestamps (pour la performance des requêtes)
    created_at = models.DateTimeField(auto_now_add=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, null=True)

    # Tenant ID (pour la séparation des données multi-locataires)
    # tenant_id = models.CharField(max_length=100, default="tenant_1", blank=True, editable=False)

    # Soft Delete (pour l'intégrité de l'application)
    is_deleted = models.BooleanField(default=False)

    # Managers
    objects = SoftDeleteManager()  # Remplace le .objects.all() par défaut
    all_objects = models.Manager()  # Garde un accès à TOUS les objets

    # Historique (pour l'audit)
    # On désactive le suivi de 'created_by'/'updated_by' car on ne les a pas
    history = HistoricalRecords(
        excluded_fields=['lft', 'rght', 'tree_id', 'level'], # On surcharge la définition de 'history' pour exclure les champs techniques de MPTT.
        inherit=True,
        history_id_field=models.UUIDField(default=uuid.uuid4),  # Optionnel
    )

    class Meta:
        abstract = True
        ordering = ["-created_at"]
        # Indique à Django d'utiliser le manager non-filtré pour les opérations
        # internes (CASCADE, prefetch_related, etc.) afin de ne pas rater les
        # objets soft-deletés lors des suppressions en cascade.
        base_manager_name = 'all_objects'

    def get_full_history(self):
        return self.history.all().order_by("-history_date")

    # Get the creator
    @property
    def created_by(self):
        return (
            self.history.order_by("history_date").first().history_user
            if self.history.exists()
            else None
        )

    # Get the last updater
    @property
    def updated_by(self):
        return (
            self.history.filter(is_deleted=False)
            .order_by("-history_date")
            .first()
            .history_user
            if self.history.exists()
            else None
        )

    # Get the deletion history
    def deletion_info_history(self):
        return self.history.filter(is_deleted=True).order_by("-history_date")

    def get_deleted_by(self):
        return (
            self.deletion_info_history().first().history_user
            if self.deletion_info_history().exists()
            else None
        )

    def get_deleted_at(self):
        return (
            self.deletion_info_history().first().history_date
            if self.deletion_info_history().exists()
            else None
        )

    def get_diff_with_version(self, version_id):
        """
        Retourne les différences par rapport à une version d'historique spécifique.
        """
        try:
            old_version = self.history.get(history_id=version_id)
            new_version = self.history.first()

            # (changes stocke un objet ModelDelta contenant
            # les champs modifiés, les anciennes et les nouvelles valeurs)
            changes = new_version.diff_against(old_version)
            return changes.changes  # Retourne une liste des champs modifiés

        except self.history.model.DoesNotExist:
            return None

    # --- LOGIQUE DE SUPPRESSION ---

    def delete(self, using=None, keep_parents=False):
        """
        Surcharge de la méthode delete pour faire un "soft delete".
        """
        self.is_deleted = True
        self.save()
        # Note: Ceci n'appellera pas le signal 'post_delete',
        # mais 'simple_history' (qui écoute 'pre_save')
        # enregistrera ce changement de 'is_deleted' comme une 'Modification' (~).
        # C'est le comportement souhaité.

    def undelete(self):
        """
        Méthode pour "restaurer" un objet soft-deleted.
        """
        self.is_deleted = False
        self.save()

    def hard_delete(self):
        """
        Méthode pour une suppression réelle (à utiliser par les services d'admin).
        """
        # C'est 'super().delete()' qui déclenchera le signal
        # 'post_delete' et créera une entrée (—) dans l'historique.
        super().delete()






## INTEGRATION FUTURE DU CONCEPT DE TENANTS:

# from django.contrib.auth import get_user_model

# class TenantManager(models.Manager):
#     def get_queryset(self):
#         # Récupère le tenant depuis le contexte (middleware required)
#         # Note: L'implémentation réelle dépend de comment tu passes le tenant (ThreadLocal ou Request)
#         return super().get_queryset() # .filter(company=current_tenant)

# class TenantAwareModel(BaseModel):
#     company = models.ForeignKey('core.Company', on_delete=models.CASCADE, related_name='%(class)s_set')
    
#     objects = TenantManager() # Manager par défaut filtre auto
#     all_objects = models.Manager() # Pour l'admin système

#     class Meta:
#         abstract = True

# # Usage
# class Employee(TenantAwareModel): # Automatiquement sécurisé
#     pass

# class Country(BaseModel): # Donnée partagée, pas de company_id
#     pass