from rest_framework import serializers
from btl.models import DonneesSiteJour


class DonneesSiteJourSerializer(serializers.ModelSerializer):
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    campagne = serializers.SerializerMethodField()
    campagne_nom = serializers.SerializerMethodField()
    enregistre_par_nom = serializers.CharField(source='enregistre_par.name', read_only=True)
    conditionnement_stock_display = serializers.CharField(source='get_conditionnement_stock_display', read_only=True)
    conditionnement_gratuites_display = serializers.CharField(source='get_conditionnement_gratuites_display', read_only=True)
    restants_gratuites_du_jour = serializers.SerializerMethodField()

    def get_campagne(self, obj):
        return str(obj.site.campagne_id) if obj.site.campagne_id else None

    def get_campagne_nom(self, obj):
        return obj.site.campagne.nom if obj.site.campagne else None

    def get_restants_gratuites_du_jour(self, obj):
        return obj.restants_gratuites_du_jour

    class Meta:
        model = DonneesSiteJour
        fields = [
            'id',
            'site', 'site_nom',
            'campagne', 'campagne_nom',
            'date',
            'conditionnement_stock', 'conditionnement_stock_display',
            'conditionnement_gratuites', 'conditionnement_gratuites_display',
            'stock_boissons', 'nombre_boissons_gratuites',
            'quantite_gratuites_recue', 'est_report_gratuites', 'restants_gratuites_du_jour',
            'enregistre_par', 'enregistre_par_nom',
            'created_at',
        ]
        read_only_fields = ['id', 'created_at', 'enregistre_par', 'restants_gratuites_du_jour']
