from rest_framework import serializers
from btl.models import Site
from services.models import CampagneService
from .TeamSerializer import TeamMemberSerializer


def _entreprise_nom_fallback(site):
    """Pour un site sans campagne produit (site purement service), reprend
    l'entreprise de sa première CampagneService — sinon il n'y a aucun
    moyen de savoir à qui appartient le site."""
    if site.campagne:
        return site.campagne.entreprise.nom_commercial
    premiere = site.campagnes_services.select_related('entreprise').first()
    return premiere.entreprise.nom_commercial if premiere else None


class SiteListSerializer(serializers.ModelSerializer):
    campagne_nom = serializers.SerializerMethodField()
    entreprise_nom = serializers.SerializerMethodField()
    nb_hotesses = serializers.IntegerField(source='hotesses.count', read_only=True)
    nb_superviseurs = serializers.IntegerField(source='superviseurs.count', read_only=True)

    def get_campagne_nom(self, obj):
        return obj.campagne.nom if obj.campagne else None

    def get_entreprise_nom(self, obj):
        return _entreprise_nom_fallback(obj)

    class Meta:
        model = Site
        fields = [
            'id', 'nom', 'ville', 'emplacement_precis',
            'campagne', 'campagne_nom', 'entreprise_nom',
            'nb_hotesses', 'nb_superviseurs', 'created_at'
        ]
        read_only_fields = ['id', 'created_at']


class SiteDetailSerializer(serializers.ModelSerializer):
    campagne_nom = serializers.SerializerMethodField()
    entreprise_nom = serializers.SerializerMethodField()
    superviseurs = TeamMemberSerializer(many=True, read_only=True)
    hotesses = TeamMemberSerializer(many=True, read_only=True)

    def get_campagne_nom(self, obj):
        return obj.campagne.nom if obj.campagne else None

    def get_entreprise_nom(self, obj):
        return _entreprise_nom_fallback(obj)

    class Meta:
        model = Site
        fields = [
            'id', 'nom', 'ville', 'emplacement_precis',
            'campagne', 'campagne_nom', 'entreprise_nom',
            'superviseurs', 'hotesses', 'created_at'
        ]
        read_only_fields = ['id', 'created_at']


class SiteWriteSerializer(serializers.ModelSerializer):
    """
    campagne est désormais optionnelle : un site peut n'exister que pour une
    campagne service. campagne_service (write-only, optionnel) permet de
    l'ajouter directement à la sélection de sites de cette campagne service
    à la création — sans ça, un site sans campagne produit n'apparaîtrait
    nulle part avant d'être ajouté manuellement depuis la page de la
    campagne service.
    """
    campagne_service = serializers.PrimaryKeyRelatedField(
        queryset=CampagneService.objects.all(), write_only=True, required=False, allow_null=True,
        help_text="Optionnel : ajoute directement ce site à la sélection de cette campagne service."
    )

    class Meta:
        model = Site
        fields = ['id', 'nom', 'ville', 'emplacement_precis', 'campagne', 'campagne_service']
        read_only_fields = ['id']

    def validate(self, data):
        # Uniquement à la création : un update partiel (PATCH) ne renvoie pas
        # forcément ces champs, ça ne veut pas dire qu'on doit les exiger.
        if self.instance is None and not data.get('campagne') and not data.get('campagne_service'):
            raise serializers.ValidationError(
                "Renseignez une campagne produit ou une campagne service."
            )
        return data

    def create(self, validated_data):
        campagne_service = validated_data.pop('campagne_service', None)
        site = Site.objects.create(**validated_data)
        if campagne_service:
            campagne_service.sites.add(site)
        return site
