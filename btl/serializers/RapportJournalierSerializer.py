from rest_framework import serializers
from btl.models import RapportJournalier


class RapportJournalierSerializer(serializers.ModelSerializer):
    hotesse_nom = serializers.CharField(source='hotesse.name', read_only=True)
    site_nom = serializers.CharField(source='site.nom', read_only=True)

    class Meta:
        model = RapportJournalier
        fields = [
            'id', 'site', 'site_nom', 'hotesse', 'hotesse_nom', 'date',
            # Calculées automatiquement (Celery)
            'nb_degustations', 'nb_ventes', 'nb_goodies', 'chiffre_affaires',
            'heure_arrivee', 'heure_depart',
            # Saisies manuellement (superviseur / admin)
            'stock_initial_magasin', 'nombre_personnes_touchees',
            'avis_consommateurs', 'observation_generale',
            'created_at',
        ]
        read_only_fields = [
            'id', 'site', 'hotesse', 'date',
            'nb_degustations', 'nb_ventes', 'nb_goodies', 'chiffre_affaires',
            'heure_arrivee', 'heure_depart',
            'created_at',
        ]
