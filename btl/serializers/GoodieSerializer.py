from rest_framework import serializers
from btl.models import Goodie, StockGoodieSite, Site


class StockGoodieSiteSerializer(serializers.ModelSerializer):
    site_id = serializers.UUIDField(source='site.id', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    quantite_allouee = serializers.IntegerField(source='quantite_initiale', read_only=True)
    quantite_restante = serializers.IntegerField(read_only=True)
    quantite_distribuee = serializers.SerializerMethodField()

    class Meta:
        model = StockGoodieSite
        fields = ['site_id', 'site_nom', 'quantite_allouee', 'quantite_restante', 'quantite_distribuee']

    def get_quantite_distribuee(self, obj):
        return obj.quantite_initiale - obj.quantite_restante


class GoodieSerializer(serializers.ModelSerializer):
    campagne_nom = serializers.CharField(source='campagne.nom', read_only=True, allow_null=True)
    entreprise_nom = serializers.CharField(source='entreprise.nom_commercial', read_only=True)
    produit_associe_nom = serializers.CharField(source='produit_associe.nom', read_only=True, allow_null=True)
    quantite_total = serializers.SerializerMethodField()
    quantite_restante = serializers.SerializerMethodField()
    quantite_distribuee = serializers.SerializerMethodField()

    class Meta:
        model = Goodie
        fields = [
            'id', 'nom', 'description',
            'campagne', 'campagne_nom', 'entreprise_nom',
            'produit_associe', 'produit_associe_nom', 'quantite_produit_associe',
            'quantite_total', 'quantite_restante', 'quantite_distribuee',
            'created_at'
        ]
        read_only_fields = ['id', 'created_at', 'entreprise_nom', 'produit_associe_nom']

    def get_quantite_total(self, obj):
        """Somme des quantités initiales sur tous les sites."""
        return sum(stock.quantite_initiale for stock in obj.stocks_sites.all())

    def get_quantite_restante(self, obj):
        """Somme des quantités restantes sur tous les sites."""
        return sum(stock.quantite_restante for stock in obj.stocks_sites.all())

    def get_quantite_distribuee(self, obj):
        """Somme des quantités distribuées sur tous les sites."""
        return sum(
            stock.quantite_initiale - stock.quantite_restante
            for stock in obj.stocks_sites.all()
        )


class GoodieDetailSerializer(GoodieSerializer):
    stocks_sites = StockGoodieSiteSerializer(many=True, read_only=True)

    class Meta(GoodieSerializer.Meta):
        fields = GoodieSerializer.Meta.fields + ['stocks_sites']


class GoodieCreateSerializer(serializers.ModelSerializer):
    """Sérialiseur pour la création d'un goodie avec allocation initiale optionnelle."""
    quantite_total = serializers.IntegerField(
        min_value=0, default=0,
        help_text="Quantité totale à allouer initialement"
    )

    class Meta:
        model = Goodie
        fields = ['nom', 'description', 'campagne', 'produit_associe', 'quantite_produit_associe', 'quantite_total']

    def create(self, validated_data):
        quantite_total = validated_data.pop('quantite_total', 0)
        campagne = validated_data.get('campagne')

        # Si une campagne est fournie, définir l'entreprise automatiquement
        if campagne:
            validated_data['entreprise'] = campagne.entreprise

        goodie = super().create(validated_data)

        # Si quantite_total > 0 et campagne avec sites, créer des stocks
        if quantite_total > 0 and campagne:
            sites = campagne.sites.all()
            if sites.exists():
                # Répartir équitablement entre les sites
                base_qty = quantite_total // sites.count()
                remainder = quantite_total % sites.count()

                for i, site in enumerate(sites):
                    qty = base_qty + (1 if i < remainder else 0)
                    if qty > 0:
                        StockGoodieSite.objects.create(
                            site=site,
                            goodie=goodie,
                            quantite_initiale=qty,
                            quantite_restante=qty
                        )

        return goodie


class GoodieUpdateSerializer(serializers.ModelSerializer):
    """Sérialiseur pour la mise à jour partielle d'un goodie."""

    class Meta:
        model = Goodie
        fields = ['nom', 'description', 'produit_associe', 'quantite_produit_associe']


class AllouerGoodieSerializer(serializers.Serializer):
    """Sérialiseur pour l'allocation de goodies à un site."""
    site_id = serializers.UUIDField()
    quantite = serializers.IntegerField(min_value=1)

    def validate_site_id(self, value):
        try:
            return Site.objects.get(id=value)
        except Site.DoesNotExist:
            raise serializers.ValidationError("Site non trouvé.")

    def validate(self, data):
        goodie = self.context.get('goodie')
        site = data['site_id']

        if goodie and goodie.campagne:
            # Vérifier que le site appartient à la même campagne que le goodie
            if site.campagne.id != goodie.campagne.id:
                raise serializers.ValidationError(
                    {"site_id": "Le site doit appartenir à la même campagne que le goodie."}
                )

        return data
