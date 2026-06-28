from rest_framework import serializers

from services.models import ObjectifCampagneService


class ObjectifCampagneServiceSerializer(serializers.ModelSerializer):
    site_nom = serializers.CharField(source='site.nom', read_only=True, allow_null=True)

    class Meta:
        model = ObjectifCampagneService
        fields = ['id', 'campagne_service', 'site', 'site_nom', 'nom', 'valeur_cible', 'created_at']
        read_only_fields = ['id', 'created_at']
