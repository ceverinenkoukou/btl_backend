from rest_framework import serializers
from btl.models import GainPromotion


class GainPromotionSerializer(serializers.ModelSerializer):
    hotesse_nom = serializers.CharField(source='hotesse.name', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    promotion_description = serializers.CharField(source='promotion.recompense_description', read_only=True)
    type_promotion = serializers.CharField(source='promotion.type_promotion', read_only=True)
    quantite_requise = serializers.IntegerField(source='promotion.quantite_requise', read_only=True)
    quantite_offerte = serializers.IntegerField(source='promotion.quantite_offerte', read_only=True)
    conditionnement = serializers.CharField(source='promotion.conditionnement', read_only=True)
    conditionnement_display = serializers.CharField(source='promotion.get_conditionnement_display', read_only=True)

    class Meta:
        model = GainPromotion
        fields = [
            'id',
            'promotion', 'promotion_description', 'type_promotion',
            'quantite_requise', 'quantite_offerte',
            'conditionnement', 'conditionnement_display',
            'hotesse_nom', 'site_nom',
            'campagne',
            'quantite_produits_concernes',
            'nom_client',
            'vente_achat',
            'created_at',
        ]
        read_only_fields = ['id', 'created_at']
