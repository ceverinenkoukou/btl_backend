from rest_framework import serializers

from services.models import RecompenseService, GainRecompenseService


class RecompenseServiceSerializer(serializers.ModelSerializer):
    campagne_service_nom = serializers.CharField(source='campagne_service.nom', read_only=True)
    quantite_restante = serializers.IntegerField(read_only=True)

    class Meta:
        model = RecompenseService
        fields = [
            'id', 'campagne_service', 'campagne_service_nom', 'nom',
            'quantite_totale', 'quantite_distribuee', 'quantite_restante', 'created_at',
        ]
        read_only_fields = ['id', 'quantite_distribuee', 'created_at']


class GainRecompenseServiceSerializer(serializers.ModelSerializer):
    recompense_nom = serializers.CharField(source='recompense.nom', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    hotesse_nom = serializers.CharField(source='hotesse.name', read_only=True)

    class Meta:
        model = GainRecompenseService
        fields = [
            'id', 'sondage', 'recompense', 'recompense_nom',
            'site', 'site_nom', 'hotesse', 'hotesse_nom', 'nom_client', 'created_at',
        ]
        read_only_fields = ['id', 'hotesse', 'created_at']


class EnregistrerGainRecompenseServiceSerializer(serializers.Serializer):
    """
    Payload pour POST /gains-recompenses-services/enregistrer/
    {
        "recompense_id": "<uuid>",
        "site_id": "<uuid>",
        "sondage_id": "<uuid>" (optionnel),
        "nom_client": "Jean" (optionnel),
        "hotesse_id": "<uuid>" (requis seulement pour Admin/Superviseur)
    }
    """
    recompense_id = serializers.UUIDField()
    site_id = serializers.UUIDField()
    sondage_id = serializers.UUIDField(required=False, allow_null=True, default=None)
    nom_client = serializers.CharField(max_length=150, required=False, allow_blank=True)
    hotesse_id = serializers.UUIDField(required=False, allow_null=True, default=None)

    def validate_recompense_id(self, value):
        if not RecompenseService.objects.filter(id=value).exists():
            raise serializers.ValidationError("Cette récompense n'existe pas.")
        return value
