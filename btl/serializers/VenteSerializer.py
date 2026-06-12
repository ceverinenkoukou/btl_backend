from rest_framework import serializers
from btl.models import Vente


class VenteLightSerializer(serializers.ModelSerializer):
    """Version légère utilisée dans DegustationSerializer.vente."""
    conditionnement_display = serializers.CharField(
        source='get_conditionnement_display', read_only=True
    )
    prix_total = serializers.DecimalField(
        max_digits=12, decimal_places=2, read_only=True
    )

    class Meta:
        model = Vente
        fields = ['id', 'conditionnement', 'conditionnement_display', 'quantite', 'prix_total']


class VenteSerializer(serializers.ModelSerializer):
    hotesse_nom = serializers.CharField(source='hotesse.name', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    campagne_nom = serializers.CharField(source='site.campagne.nom', read_only=True)
    entreprise_nom = serializers.CharField(source='site.campagne.entreprise.nom_commercial', read_only=True)
    entreprise_logo = serializers.CharField(source='site.campagne.entreprise.logo_url', read_only=True, allow_null=True)
    entreprise_couleur_primaire = serializers.CharField(
        source='site.campagne.entreprise.couleur_primaire',
        read_only=True
    )
    entreprise_couleur_secondaire = serializers.CharField(
        source='site.campagne.entreprise.couleur_secondaire',
        read_only=True
    )
    produit_nom = serializers.CharField(source='produit.nom', read_only=True)
    conditionnement_display = serializers.CharField(
        source='get_conditionnement_display', read_only=True
    )
    prix_total = serializers.DecimalField(
        max_digits=12, decimal_places=2, read_only=True
    )

    class Meta:
        model = Vente
        fields = [
            'id',
            'hotesse_nom', 'site_nom', 'campagne_nom', 'entreprise_nom',
            'entreprise_logo', 'entreprise_couleur_primaire',
            'entreprise_couleur_secondaire',
            'produit', 'produit_nom',
            'conditionnement', 'conditionnement_display',
            'quantite', 'prix_total', 'type_vente',
            'nom_client',
            'created_at',
        ]
        read_only_fields = ['id', 'created_at']
