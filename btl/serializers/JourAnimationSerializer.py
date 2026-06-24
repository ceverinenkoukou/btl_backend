from rest_framework import serializers
from btl.models import JourAnimation


class JourAnimationSerializer(serializers.ModelSerializer):
    campagne_nom = serializers.CharField(source='campagne.nom', read_only=True)
    site_nom = serializers.SerializerMethodField()

    def get_site_nom(self, obj):
        return obj.site.nom if obj.site else None

    class Meta:
        model = JourAnimation
        fields = [
            'id', 'campagne', 'campagne_nom',
            'site', 'site_nom',
            'date', 'heure_ouverture', 'heure_fermeture',
            'created_at',
        ]
        read_only_fields = ['id', 'created_at', 'campagne_nom', 'site_nom']

    def validate(self, data):
        campagne = data.get('campagne') or (self.instance.campagne if self.instance else None)
        date = data.get('date') or (self.instance.date if self.instance else None)
        heure_ouverture = data.get('heure_ouverture')
        heure_fermeture = data.get('heure_fermeture')

        if heure_ouverture and heure_fermeture and heure_fermeture <= heure_ouverture:
            raise serializers.ValidationError(
                {"heure_fermeture": "L'heure de fermeture doit être après l'heure d'ouverture."}
            )
        if campagne and date:
            if date < campagne.date_debut or date > campagne.date_fin:
                raise serializers.ValidationError(
                    {"date": f"La date doit être entre {campagne.date_debut} et {campagne.date_fin}."}
                )
        return data
