from rest_framework import serializers
from btl.models import Site
from .TeamSerializer import TeamMemberSerializer


class SiteListSerializer(serializers.ModelSerializer):
    campagne_nom = serializers.CharField(source='campagne.nom', read_only=True)
    entreprise_nom = serializers.CharField(source='campagne.entreprise.nom_commercial', read_only=True)
    nb_hotesses = serializers.IntegerField(source='hotesses.count', read_only=True)
    nb_superviseurs = serializers.IntegerField(source='superviseurs.count', read_only=True)

    class Meta:
        model = Site
        fields = [
            'id', 'nom', 'ville', 'emplacement_precis',
            'campagne', 'campagne_nom', 'entreprise_nom',
            'nb_hotesses', 'nb_superviseurs', 'created_at'
        ]
        read_only_fields = ['id', 'created_at']


class SiteDetailSerializer(serializers.ModelSerializer):
    campagne_nom = serializers.CharField(source='campagne.nom', read_only=True)
    entreprise_nom = serializers.CharField(source='campagne.entreprise.nom_commercial', read_only=True)
    superviseurs = TeamMemberSerializer(many=True, read_only=True)
    hotesses = TeamMemberSerializer(many=True, read_only=True)

    class Meta:
        model = Site
        fields = [
            'id', 'nom', 'ville', 'emplacement_precis',
            'campagne', 'campagne_nom', 'entreprise_nom',
            'superviseurs', 'hotesses', 'created_at'
        ]
        read_only_fields = ['id', 'created_at']


class SiteWriteSerializer(serializers.ModelSerializer):
    class Meta:
        model = Site
        fields = ['id', 'nom', 'ville', 'emplacement_precis', 'campagne']
        read_only_fields = ['id']
