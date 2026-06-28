from rest_framework import serializers
from btl.models import Pointage, JourAnimation, Site
import datetime


class PointageSerializer(serializers.ModelSerializer):
    hotesse_nom = serializers.CharField(source='hotesse.name', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    campagne = serializers.SerializerMethodField()
    campagne_nom = serializers.SerializerMethodField()
    heure_ouverture_prevue = serializers.SerializerMethodField()
    heure_fermeture_prevue = serializers.SerializerMethodField()

    def get_campagne(self, obj):
        return str(obj.site.campagne_id) if obj.site.campagne_id else None

    def get_campagne_nom(self, obj):
        return obj.site.campagne.nom if obj.site.campagne else None

    class Meta:
        model = Pointage
        fields = [
            'id',
            'hotesse', 'hotesse_nom',
            'site', 'site_nom',
            'campagne', 'campagne_nom',
            'jour',
            'date',
            'heure_arrivee', 'heure_depart',
            'heure_ouverture_prevue', 'heure_fermeture_prevue',
            'created_at',
        ]
        read_only_fields = ['id', 'created_at', 'hotesse']

    def get_heure_ouverture_prevue(self, obj):
        if obj.jour:
            return obj.jour.heure_ouverture.strftime('%H:%M')
        return None

    def get_heure_fermeture_prevue(self, obj):
        if obj.jour:
            return obj.jour.heure_fermeture.strftime('%H:%M')
        return None


class PointerArriveeSerializer(serializers.Serializer):
    """Payload pour pointer l'arrivée d'une hôtesse."""
    site_id = serializers.UUIDField()

    def validate_site_id(self, value):
        try:
            return Site.objects.get(id=value)
        except Site.DoesNotExist:
            raise serializers.ValidationError("Ce site n'existe pas.")


class PointerDepartSerializer(serializers.Serializer):
    """Payload pour pointer le départ d'une hôtesse."""
    site_id = serializers.UUIDField()

    def validate_site_id(self, value):
        try:
            return Site.objects.get(id=value)
        except Site.DoesNotExist:
            raise serializers.ValidationError("Ce site n'existe pas.")
