from rest_framework import serializers
from btl.models import Entreprise, RemoteUser
from .ProduitSerializer import ProduitSerializer, ProduitCreateSerializer


class EntrepriseSerializer(serializers.ModelSerializer):
    email = serializers.EmailField(source='user.email', read_only=True)
    nom_utilisateur = serializers.CharField(source='user.name', read_only=True)
    is_password_changed = serializers.BooleanField(source='user.is_password_changed', read_only=True)
    produits = ProduitSerializer(many=True, read_only=True)

    class Meta:
        model = Entreprise
        fields = [
            'id', 'nom_commercial', 'telephone', 'adresse',
            'couleur_primaire', 'couleur_secondaire', 'logo_url',
            'email', 'nom_utilisateur', 'is_password_changed',
            'produits', 'created_at'
        ]
        read_only_fields = ['id', 'created_at']


class CreateEntrepriseSerializer(serializers.Serializer):
    """
    Sérialiseur dédié à la création d'une entreprise par l'admin.
    Crée en une seule requête : RemoteUser + profil Entreprise + produits (optionnel).

    Champs obligatoires : email, nom_commercial
    Champs optionnels  : name (déduit de nom_commercial si absent), telephone, adresse,
                         couleur_primaire, couleur_secondaire, logo_url, produits
    """
    email = serializers.EmailField()
    nom_commercial = serializers.CharField(max_length=255)
    name = serializers.CharField(max_length=255, required=False, allow_blank=True)
    telephone = serializers.CharField(max_length=20, required=False, allow_blank=True)
    adresse = serializers.CharField(required=False, allow_blank=True)
    couleur_primaire = serializers.CharField(max_length=7, required=False, default='#006776')
    couleur_secondaire = serializers.CharField(max_length=7, required=False, default='#00899b')
    logo_url = serializers.CharField(required=False, allow_blank=True, allow_null=True)
    produits = ProduitCreateSerializer(many=True, required=False, default=list)

    def validate_email(self, value):
        if RemoteUser.objects.filter(email=value).exists():
            raise serializers.ValidationError("Un utilisateur avec cet email existe déjà.")
        return value

    def validate(self, data):
        if not data.get('name'):
            data['name'] = data['nom_commercial']
        return data
