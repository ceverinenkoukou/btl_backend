from rest_framework import serializers
from btl.models import Degustation, Vente, Produit, Site


class DegustationSerializer(serializers.ModelSerializer):
    """
    Sérialiseur principal pour la saisie d'une dégustation par une hôtesse.

    Champs auto-remplis côté serveur (non envoyés par le client) :
      - hotesse   → request.user
      - campagne  → site.campagne

    Champs optionnels pour créer une Vente si a_achete=True :
      - conditionnement
      - quantite
    """

    # --- Champs en lecture seule (affichage) ---
    hotesse_nom = serializers.CharField(source='hotesse.name', read_only=True)
    campagne_nom = serializers.CharField(source='campagne.nom', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    produit_nom = serializers.CharField(source='produit.nom', read_only=True)
    tranche_age_display = serializers.CharField(source='get_tranche_age_display', read_only=True)
    intention_achat_display = serializers.CharField(source='get_intention_achat_display', read_only=True)

    # --- Champs d'achat : write-only, gérés dans create() ---
    conditionnement = serializers.ChoiceField(
        choices=Vente.TypeConditionnement.choices,
        write_only=True,
        required=False
    )
    quantite = serializers.IntegerField(
        write_only=True,
        required=False,
        default=1,
        min_value=1
    )

    # Expose la vente associée en lecture
    vente = serializers.SerializerMethodField()

    note_gout = serializers.IntegerField(min_value=0, max_value=5)

    class Meta:
        model = Degustation
        fields = [
            'id',
            # Contexte
            'site', 'site_nom',
            'campagne_nom',
            'hotesse_nom',
            'produit', 'produit_nom',
            # Infos client
            'nom_client', 'tranche_age', 'tranche_age_display',
            # Évaluation
            'note_gout', 'intention_achat', 'intention_achat_display',
            # Achat
            'a_achete', 'conditionnement', 'quantite',
            # Vente créée
            'vente',
            'created_at',
        ]
        read_only_fields = ['id', 'created_at']

    def get_vente(self, obj):
        from btl.serializers.VenteSerializer import VenteLightSerializer
        try:
            return VenteLightSerializer(obj.vente_associee).data
        except Vente.DoesNotExist:
            return None

    # --- Validations ---

    def validate_site(self, site):
        """L'hôtesse ne peut saisir que sur un site auquel elle est assignée."""
        user = self.context['request'].user
        if not site.hotesses.filter(id=user.id).exists():
            raise serializers.ValidationError(
                "Vous n'êtes pas assignée à ce site."
            )
        return site

    def validate_produit(self, produit):
        """Le produit doit appartenir à l'entreprise de la campagne du site."""
        site_id = self.initial_data.get('site')
        if site_id:
            try:
                site = Site.objects.get(pk=site_id)
                if not site.campagne.get_produits_disponibles().filter(id=produit.id).exists():
                    raise serializers.ValidationError(
                        "Ce produit n'appartient pas à l'entreprise de cette campagne."
                    )
            except Site.DoesNotExist:
                pass
        return produit

    # --- Création ---

    def create(self, validated_data):
        conditionnement = validated_data.pop('conditionnement', None)
        quantite = validated_data.pop('quantite', 1)

        user = self.context['request'].user
        site = validated_data['site']

        validated_data['hotesse'] = user
        validated_data['campagne'] = site.campagne

        degustation = Degustation.objects.create(**validated_data)

        if degustation.a_achete and conditionnement:
            Vente.objects.create(
                degustation=degustation,
                hotesse=user,
                site=site,
                produit=degustation.produit,
                conditionnement=conditionnement,
                quantite=quantite,
            )

        return degustation
