from rest_framework import serializers
from btl.models import Produit


class ProduitSerializer(serializers.ModelSerializer):
    type_conditionnement_display = serializers.CharField(
        source='get_type_conditionnement_display', read_only=True
    )

    class Meta:
        model = Produit
        fields = [
            'id', 'nom', 'description',
            'type_conditionnement', 'type_conditionnement_display',
            'prix_indicatif', 'created_at',
        ]
        read_only_fields = ['id', 'created_at']


class ProduitCreateSerializer(serializers.Serializer):
    """Sérialiseur léger pour la création nested d'un produit lors de la création d'entreprise."""
    nom = serializers.CharField(max_length=255)
    description = serializers.CharField(required=False, allow_blank=True, allow_null=True)
    type_conditionnement = serializers.ChoiceField(
        choices=Produit.TypeConditionnement.choices,
        default=Produit.TypeConditionnement.UNITE,
    )
    prix_indicatif = serializers.DecimalField(
        max_digits=10, decimal_places=2, required=False, allow_null=True
    )
