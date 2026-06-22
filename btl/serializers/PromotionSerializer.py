from rest_framework import serializers
from btl.models import Promotion, Site, Goodie


class PromotionSerializer(serializers.ModelSerializer):
    type_promotion_display = serializers.CharField(
        source='get_type_promotion_display', read_only=True
    )
    conditionnement_display = serializers.CharField(
        source='get_conditionnement_display', read_only=True
    )
    sites = serializers.PrimaryKeyRelatedField(
        queryset=Site.objects.all(),
        many=True,
        required=False,
    )
    sites_noms = serializers.SerializerMethodField()
    goodies = serializers.PrimaryKeyRelatedField(
        queryset=Goodie.objects.all(),
        many=True,
        required=False,
    )
    goodies_details = serializers.SerializerMethodField()

    class Meta:
        model = Promotion
        fields = [
            'id', 'campagne',
            'sites', 'sites_noms',
            'type_promotion', 'type_promotion_display',
            'conditionnement', 'conditionnement_display',
            'quantite_requise', 'quantite_offerte', 'recompense_description',
            'is_active', 'goodies', 'goodies_details', 'created_at',
        ]
        read_only_fields = ['id', 'created_at']

    def get_sites_noms(self, obj):
        return [site.nom for site in obj.sites.all()]

    def get_goodies_details(self, obj):
        return [{'id': str(g.id), 'nom': g.nom} for g in obj.goodies.all()]

    def validate(self, data):
        campagne = data.get('campagne') or getattr(self.instance, 'campagne', None)
        sites = data.get('sites')

        if campagne and sites:
            invalid_sites = [site.nom for site in sites if site.campagne_id != campagne.id]
            if invalid_sites:
                raise serializers.ValidationError({
                    'sites': "Tous les sites ciblés doivent appartenir à la campagne de l'offre."
                })

        return data
