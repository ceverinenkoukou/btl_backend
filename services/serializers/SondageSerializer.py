from rest_framework import serializers

from btl.models import RemoteUser
from btl.services.saisie_manuelle import resoudre_hotesse_et_verifier_site
from services.models import Sondage


class SondageSerializer(serializers.ModelSerializer):
    """
    Sérialiseur principal pour la saisie d'un sondage par une hôtesse (ou,
    pour le compte d'une hôtesse, par un Admin/Superviseur — mêmes règles
    que DegustationSerializer côté produits).
    """

    hotesse = serializers.UUIDField(source='hotesse.id', read_only=True)
    hotesse_nom = serializers.CharField(source='hotesse.name', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    service_nom = serializers.CharField(source='service.nom', read_only=True)
    campagne_service_nom = serializers.CharField(source='campagne_service.nom', read_only=True)
    tranche_age_display = serializers.CharField(source='get_tranche_age_display', read_only=True, allow_null=True)
    genre_display = serializers.CharField(source='get_genre_display', read_only=True, allow_null=True)

    # Requis uniquement quand un Admin/Superviseur saisit pour le compte
    # d'une hôtesse (ignoré si l'appelant est lui-même une hôtesse).
    hotesse_id = serializers.UUIDField(write_only=True, required=False, allow_null=True, default=None)

    class Meta:
        model = Sondage
        fields = [
            'id', 'campagne_service', 'campagne_service_nom',
            'site', 'site_nom', 'hotesse', 'hotesse_nom',
            'service', 'service_nom',
            'nom_client', 'tranche_age', 'tranche_age_display', 'genre', 'genre_display',
            'possede_deja', 'a_souscrit', 'hotesse_id', 'created_at',
        ]
        read_only_fields = ['id', 'created_at']

    def validate_site(self, site):
        """L'hôtesse ne peut saisir que sur un site auquel elle est assignée.
        Pour Admin/Superviseur, la vérification complète se fait dans create()."""
        user = self.context['request'].user
        if user.role == RemoteUser.Roles.HOTESSES and not site.hotesses.filter(id=user.id).exists():
            raise serializers.ValidationError("Vous n'êtes pas assignée à ce site.")
        return site

    def validate(self, data):
        service = data.get('service')
        campagne_service = data.get('campagne_service')
        if service and campagne_service and not campagne_service.get_services_disponibles().filter(id=service.id).exists():
            raise serializers.ValidationError(
                {"service": "Ce service n'est pas disponible pour cette campagne."}
            )
        if data.get('possede_deja') and data.get('a_souscrit'):
            raise serializers.ValidationError(
                {"a_souscrit": "Un client qui possède déjà le service ne peut pas « souscrire » suite à l'échange."}
            )
        return data

    def create(self, validated_data):
        hotesse_id = validated_data.pop('hotesse_id', None)
        user = self.context['request'].user
        site = validated_data['site']

        hotesse = resoudre_hotesse_et_verifier_site(user, site, hotesse_id)
        validated_data['hotesse'] = hotesse

        return Sondage.objects.create(**validated_data)
