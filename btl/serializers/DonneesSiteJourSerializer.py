from rest_framework import serializers
from btl.models import DonneesSiteJour


class DonneesSiteJourSerializer(serializers.ModelSerializer):
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    campagne = serializers.UUIDField(source='site.campagne.id', read_only=True)
    campagne_nom = serializers.CharField(source='site.campagne.nom', read_only=True)
    enregistre_par_nom = serializers.CharField(source='enregistre_par.name', read_only=True)

    class Meta:
        model = DonneesSiteJour
        fields = [
            'id',
            'site', 'site_nom',
            'campagne', 'campagne_nom',
            'date',
            'stock_boissons', 'nombre_boissons_gratuites',
            'enregistre_par', 'enregistre_par_nom',
            'created_at',
        ]
        read_only_fields = ['id', 'created_at', 'enregistre_par']
