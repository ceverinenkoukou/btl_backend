from rest_framework import serializers
from btl.models import RapportJournalier


class RapportJournalierSerializer(serializers.ModelSerializer):
    hotesse_nom = serializers.CharField(source='hotesse.name', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)

    class Meta:
        model = RapportJournalier
        fields = [
            'id', 'site', 'site_nom', 'hotesse', 'hotesse_nom',
            'date', 'nb_degustations', 'nb_ventes', 'chiffre_affaires',
            'email_envoye', 'created_at',
        ]
        read_only_fields = ['id', 'created_at', 'email_envoye']
