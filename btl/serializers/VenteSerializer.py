from rest_framework import serializers
from btl.models import Vente, Site, Produit, Campagne


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
    hotesse = serializers.UUIDField(source='hotesse.id', read_only=True)
    hotesse_nom = serializers.CharField(source='hotesse.name', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    campagne_nom = serializers.CharField(source='site.campagne.nom', read_only=True)
    entreprise_nom = serializers.CharField(source='site.campagne.entreprise.nom_commercial', read_only=True)
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
    est_achat_promo = serializers.SerializerMethodField(
        help_text="True si cette vente NORMAL est l'achat ayant déclenché un GainPromotion "
                   "(donc pas réellement une vente « hors promo »)."
    )

    def get_est_achat_promo(self, obj):
        return hasattr(obj, 'gain_promotion')

    class Meta:
        model = Vente
        fields = [
            'id',
            'hotesse', 'hotesse_nom', 'site_nom', 'campagne_nom', 'entreprise_nom',
            'entreprise_couleur_primaire',
            'entreprise_couleur_secondaire',
            'produit', 'produit_nom',
            'conditionnement', 'conditionnement_display',
            'quantite', 'prix_total', 'type_vente',
            'nom_client', 'tranche_age', 'genre',
            'note_gout', 'note_ambiance', 'est_achat_promo',
            'created_at',
        ]
        read_only_fields = ['id', 'created_at']


class CreerVenteDirecteSerializer(serializers.Serializer):
    """
    Crée une vente "directe" — sans dégustation, sans promo — réservée aux
    campagnes de type VENTE sans mécanique promotionnelle (type_recompense
    AUCUNE ou GOODIES hors roue). Pour une campagne VENTE avec promo, la
    vente d'achat est créée par PromotionViewSet.enregistrer_gain, pas ici.

    Payload :
    {
        "site_id": "<uuid>",
        "produit_id": "<uuid>",
        "conditionnement": "UNITE" | "PACK",
        "quantite": 1,
        "nom_client": "Jean" (optionnel),
        "hotesse_id": "<uuid>" (requis seulement pour Admin/Superviseur)
    }
    """
    site_id = serializers.UUIDField()
    produit_id = serializers.UUIDField()
    conditionnement = serializers.ChoiceField(choices=Vente.TypeConditionnement.choices)
    quantite = serializers.IntegerField(min_value=1, default=1)
    nom_client = serializers.CharField(max_length=150, required=False, allow_blank=True)
    tranche_age = serializers.CharField(max_length=20, required=False, allow_blank=True, allow_null=True, default=None)
    genre = serializers.CharField(max_length=10, required=False, allow_blank=True, allow_null=True, default=None)
    note_gout = serializers.IntegerField(min_value=0, max_value=10, required=False, allow_null=True, default=None)
    note_ambiance = serializers.IntegerField(min_value=0, max_value=10, required=False, allow_null=True, default=None)
    hotesse_id = serializers.UUIDField(required=False, allow_null=True, default=None)

    def validate_site_id(self, value):
        try:
            site = Site.objects.get(id=value)
        except Site.DoesNotExist:
            raise serializers.ValidationError("Ce site n'existe pas.")
        if site.campagne.type_campagne != Campagne.TypeCampagne.VENTE:
            raise serializers.ValidationError(
                "Cette campagne n'est pas configurée en mode Vente seule."
            )
        return value

    def validate_produit_id(self, value):
        try:
            Produit.objects.get(id=value)
        except Produit.DoesNotExist:
            raise serializers.ValidationError("Ce produit n'existe pas.")
        return value
