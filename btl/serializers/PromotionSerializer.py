from rest_framework import serializers
from btl.models import Promotion


class PromotionSerializer(serializers.ModelSerializer):
    type_promotion_display = serializers.CharField(
        source='get_type_promotion_display', read_only=True
    )

    class Meta:
        model = Promotion
        fields = [
            'id', 'campagne',
            'type_promotion', 'type_promotion_display',
            'quantite_requise', 'recompense_description',
            'is_active', 'created_at',
        ]
        read_only_fields = ['id', 'created_at']
