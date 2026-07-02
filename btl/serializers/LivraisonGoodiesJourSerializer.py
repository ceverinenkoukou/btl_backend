from rest_framework import serializers
from btl.models import LivraisonGoodiesJour, Site, Goodie


class LivraisonGoodiesJourSerializer(serializers.ModelSerializer):
    site_nom = serializers.CharField(source='site.nom', read_only=True)
    goodie_nom = serializers.CharField(source='goodie.nom', read_only=True)
    campagne = serializers.UUIDField(source='site.campagne.id', read_only=True)
    campagne_nom = serializers.CharField(source='site.campagne.nom', read_only=True)
    enregistre_par_nom = serializers.CharField(source='enregistre_par.name', read_only=True)
    gains_du_jour = serializers.IntegerField(read_only=True)
    restants_du_jour = serializers.IntegerField(read_only=True)

    class Meta:
        model = LivraisonGoodiesJour
        fields = [
            'id',
            'site', 'site_nom',
            'goodie', 'goodie_nom',
            'campagne', 'campagne_nom',
            'date',
            'quantite_apportee',
            'gains_du_jour',
            'restants_du_jour',
            'est_report',
            'enregistre_par', 'enregistre_par_nom',
            'created_at',
        ]
        read_only_fields = [
            'id', 'created_at', 'enregistre_par',
            'gains_du_jour', 'restants_du_jour',
        ]

    def validate(self, data):
        site = data.get('site')
        goodie = data.get('goodie')
        if site and goodie:
            if not goodie.entreprise == site.campagne.entreprise:
                raise serializers.ValidationError(
                    "Ce goodie n'appartient pas à l'entreprise de cette campagne."
                )
        return data
