from rest_framework import serializers
from btl.models import SiteProduitPrix


class SiteProduitPrixSerializer(serializers.ModelSerializer):
    produit_nom = serializers.CharField(source='produit.nom', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)

    class Meta:
        model = SiteProduitPrix
        fields = ['id', 'site', 'site_nom', 'produit', 'produit_nom', 'prix', 'created_at']
        read_only_fields = ['id', 'created_at']
