from rest_framework import serializers

from services.models import Service


class ServiceSerializer(serializers.ModelSerializer):
    entreprise_nom = serializers.CharField(source='entreprise.nom_commercial', read_only=True)

    class Meta:
        model = Service
        fields = ['id', 'entreprise', 'entreprise_nom', 'nom', 'description', 'created_at']
        read_only_fields = ['id', 'created_at']


class ServiceCreateSerializer(serializers.Serializer):
    """Sérialiseur léger pour la création nested d'un service lors de la
    création d'entreprise (même rôle que ProduitCreateSerializer côté produits)."""
    nom = serializers.CharField(max_length=255)
    description = serializers.CharField(required=False, allow_blank=True, allow_null=True)
