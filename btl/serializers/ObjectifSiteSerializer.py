from rest_framework import serializers
from btl.models import ObjectifSite


class ObjectifSiteSerializer(serializers.ModelSerializer):
    hotesse_nom = serializers.CharField(source='hotesse.name', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)

    class Meta:
        model = ObjectifSite
        fields = [
            'id', 'site', 'site_nom', 'hotesse', 'hotesse_nom',
            'date', 'objectif_degustations', 'objectif_ventes', 'created_at',
        ]
        read_only_fields = ['id', 'created_at']


class ObjectifSiteWriteSerializer(serializers.ModelSerializer):
    class Meta:
        model = ObjectifSite
        fields = ['id', 'site', 'hotesse', 'date', 'objectif_degustations', 'objectif_ventes']
        read_only_fields = ['id']
