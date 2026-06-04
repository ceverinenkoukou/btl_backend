from rest_framework import serializers
from btl.models import Campagne
from .TeamSerializer import TeamMemberSerializer


class CampagneListSerializer(serializers.ModelSerializer):
    entreprise_nom        = serializers.CharField(source='entreprise.nom_commercial',  read_only=True)
    couleur_primaire      = serializers.CharField(source='entreprise.couleur_primaire',  read_only=True)
    couleur_secondaire    = serializers.CharField(source='entreprise.couleur_secondaire', read_only=True)
    logo_url              = serializers.CharField(source='entreprise.logo_url',          read_only=True, allow_null=True)
    nb_sites              = serializers.IntegerField(source='sites.count',       read_only=True)
    nb_hotesses           = serializers.IntegerField(source='hotesses.count',    read_only=True)
    nb_superviseurs       = serializers.IntegerField(source='superviseurs.count', read_only=True)

    class Meta:
        model = Campagne
        fields = [
            'id', 'nom', 'entreprise', 'entreprise_nom',
            'couleur_primaire', 'couleur_secondaire', 'logo_url',
            'date_debut', 'date_fin', 'description',
            'objectif_degustations', 'objectif_ventes',
            'nb_sites', 'nb_hotesses', 'nb_superviseurs', 'created_at'
        ]
        read_only_fields = ['id', 'created_at']


class CampagneDetailSerializer(serializers.ModelSerializer):
    entreprise_nom     = serializers.CharField(source='entreprise.nom_commercial',   read_only=True)
    couleur_primaire   = serializers.CharField(source='entreprise.couleur_primaire',  read_only=True)
    couleur_secondaire = serializers.CharField(source='entreprise.couleur_secondaire', read_only=True)
    logo_url           = serializers.CharField(source='entreprise.logo_url',          read_only=True, allow_null=True)
    superviseurs       = TeamMemberSerializer(many=True, read_only=True)
    hotesses           = TeamMemberSerializer(many=True, read_only=True)

    class Meta:
        model = Campagne
        fields = [
            'id', 'nom', 'entreprise', 'entreprise_nom',
            'couleur_primaire', 'couleur_secondaire', 'logo_url',
            'date_debut', 'date_fin', 'description',
            'objectif_degustations', 'objectif_ventes',
            'superviseurs', 'hotesses', 'created_at'
        ]
        read_only_fields = ['id', 'created_at']


class CampagneWriteSerializer(serializers.ModelSerializer):
    """Utilisé pour la création et la mise à jour d'une campagne (sans membres d'équipe)."""

    class Meta:
        model = Campagne
        fields = ['id', 'nom', 'entreprise', 'date_debut', 'date_fin', 'description', 'objectif_degustations', 'objectif_ventes']
        read_only_fields = ['id']

    def validate(self, data):
        if data.get('date_fin') and data.get('date_debut'):
            if data['date_fin'] < data['date_debut']:
                raise serializers.ValidationError(
                    {"date_fin": "La date de fin ne peut pas être antérieure à la date de début."}
                )
        return data


class ManageTeamSerializer(serializers.Serializer):
    """Payload pour l'endpoint d'assignation en masse de l'équipe d'une campagne ou d'un site."""
    superviseurs_ids = serializers.ListField(
        child=serializers.UUIDField(), required=False, default=list
    )
    hotesses_ids = serializers.ListField(
        child=serializers.UUIDField(), required=False, default=list
    )
    notify = serializers.BooleanField(
        default=True,
        help_text="Si True, envoie un email de notification à chaque membre ajouté."
    )
