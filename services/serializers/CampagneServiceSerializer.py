from rest_framework import serializers

from services.models import CampagneService
from btl.serializers.TeamSerializer import TeamMemberSerializer
from .ServiceSerializer import ServiceSerializer


class CampagneServiceListSerializer(serializers.ModelSerializer):
    entreprise_nom = serializers.CharField(source='entreprise.nom_commercial', read_only=True)
    type_campagne_service_display = serializers.CharField(
        source='get_type_campagne_service_display', read_only=True
    )
    nb_sites = serializers.IntegerField(source='sites.count', read_only=True)
    nb_hotesses = serializers.IntegerField(source='hotesses.count', read_only=True)
    nb_superviseurs = serializers.IntegerField(source='superviseurs.count', read_only=True)
    # Pour repérer une campagne croisée côté frontend sans appel supplémentaire.
    campagne_produit_liee_nom = serializers.CharField(
        source='campagne_produit_liee.nom', read_only=True, allow_null=True
    )

    class Meta:
        model = CampagneService
        fields = [
            'id', 'nom', 'entreprise', 'entreprise_nom',
            'type_campagne_service', 'type_campagne_service_display',
            'description', 'date_debut', 'date_fin',
            'campagne_produit_liee', 'campagne_produit_liee_nom',
            'is_active', 'nb_sites', 'nb_hotesses', 'nb_superviseurs', 'created_at',
        ]
        read_only_fields = ['id', 'created_at']


class CampagneServiceDetailSerializer(serializers.ModelSerializer):
    entreprise_nom = serializers.CharField(source='entreprise.nom_commercial', read_only=True)
    type_campagne_service_display = serializers.CharField(
        source='get_type_campagne_service_display', read_only=True
    )
    sites = serializers.PrimaryKeyRelatedField(many=True, read_only=True)
    superviseurs = TeamMemberSerializer(many=True, read_only=True)
    hotesses = TeamMemberSerializer(many=True, read_only=True)
    # Services réellement disponibles (sélection de la campagne, ou tous
    # ceux de l'entreprise si aucune sélection — cf. get_services_disponibles).
    services = serializers.SerializerMethodField()
    campagne_produit_liee_nom = serializers.CharField(
        source='campagne_produit_liee.nom', read_only=True, allow_null=True
    )

    def get_services(self, obj):
        return ServiceSerializer(obj.get_services_disponibles(), many=True).data

    class Meta:
        model = CampagneService
        fields = [
            'id', 'nom', 'entreprise', 'entreprise_nom',
            'type_campagne_service', 'type_campagne_service_display',
            'description', 'date_debut', 'date_fin',
            'sites', 'superviseurs', 'hotesses', 'services',
            'campagne_produit_liee', 'campagne_produit_liee_nom',
            'is_active', 'created_at',
        ]
        read_only_fields = ['id', 'created_at']


class CampagneServiceWriteSerializer(serializers.ModelSerializer):
    """Création / mise à jour. sites, hotesses, superviseurs, services sont
    optionnels et peuvent être ajustés après création (mêmes ids que ceux de
    btl.Site / btl.RemoteUser / services.Service, infrastructure partagée).
    services vide = tous les services de l'entreprise sont disponibles."""

    class Meta:
        model = CampagneService
        fields = [
            'id', 'nom', 'entreprise', 'type_campagne_service', 'description',
            'date_debut', 'date_fin', 'sites', 'superviseurs', 'hotesses', 'services',
            'campagne_produit_liee', 'is_active',
        ]
        read_only_fields = ['id']

    def validate(self, data):
        if data.get('date_fin') and data.get('date_debut') and data['date_fin'] < data['date_debut']:
            raise serializers.ValidationError(
                {"date_fin": "La date de fin ne peut pas être antérieure à la date de début."}
            )
        return data
