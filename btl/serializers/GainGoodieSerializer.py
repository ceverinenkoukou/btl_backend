from rest_framework import serializers
from btl.models import GainGoodie, Goodie, StockGoodieSite, Site, Produit


class GainGoodieSerializer(serializers.ModelSerializer):
    goodie_nom = serializers.CharField(source='goodie.nom', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    campagne = serializers.UUIDField(source='site.campagne.id', read_only=True)
    campagne_nom = serializers.CharField(source='site.campagne.nom', read_only=True)
    produit_nom = serializers.CharField(source='produit_associe.nom', read_only=True)
    
    class Meta:
        model = GainGoodie
        fields = [
            'id', 'goodie', 'goodie_nom', 'site', 'site_nom',
            'campagne', 'campagne_nom',
            'produit_associe', 'produit_nom', 'quantite_produit',
            'nom_client', 'created_at'
        ]
        read_only_fields = [
            'id', 'created_at', 'goodie_nom', 'site_nom',
            'campagne', 'campagne_nom', 'produit_nom',
        ]


class EnregistrerGainGoodieSerializer(serializers.Serializer):
    """
    Sérialiseur pour enregistrer un gain de goodie via la roue de la fortune.
    Décompte à la fois le goodie et le produit associé du stock.
    
    Payload:
    {
        "goodie_id": "<uuid>",
        "site_id": "<uuid>",
        "nom_client": "Jean" (optionnel),
        "quantite_produit": 1 (optionnel, default=1)
    }
    """
    goodie_id = serializers.UUIDField()
    site_id = serializers.UUIDField()
    nom_client = serializers.CharField(max_length=150, required=False, allow_blank=True)
    quantite_produit = serializers.IntegerField(min_value=1, required=False, default=1)
    
    def validate_goodie_id(self, value):
        try:
            Goodie.objects.get(id=value)
        except Goodie.DoesNotExist:
            raise serializers.ValidationError("Ce goodie n'existe pas.")
        return value
    
    def validate_site_id(self, value):
        try:
            Site.objects.get(id=value)
        except Site.DoesNotExist:
            raise serializers.ValidationError("Ce site n'existe pas.")
        return value
    
    def validate(self, data):
        """Valider que le goodie existe sur ce site avec stock disponible."""
        goodie_id = data.get('goodie_id')
        site_id = data.get('site_id')
        
        try:
            stock = StockGoodieSite.objects.get(
                goodie_id=goodie_id,
                site_id=site_id
            )
            if stock.quantite_restante < 1:
                raise serializers.ValidationError(
                    f"Stock insuffisant pour ce goodie ({stock.quantite_restante} disponible)."
                )
        except StockGoodieSite.DoesNotExist:
            raise serializers.ValidationError(
                "Ce goodie n'est pas disponible sur ce site."
            )
        
        return data
