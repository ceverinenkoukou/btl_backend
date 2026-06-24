from rest_framework import serializers
from btl.models import RapportJournalierConfig


class RapportJournalierConfigSerializer(serializers.ModelSerializer):
    configure_par_nom = serializers.SerializerMethodField(read_only=True)

    class Meta:
        model = RapportJournalierConfig
        fields = [
            "id",
            "campagne",
            "configure_par",
            "configure_par_nom",
            "show_pointage",
            "show_stock",
            "show_stock_boissons",
            "show_boissons_gratuites",
            "show_ventes_detail",
            "show_ugs_recus",
            "show_ugs_distribues",
            "show_ugs_restants",
            "show_degustation",
            "show_genre",
            "show_tranche_age",
            "show_notes_degustation",
            "show_personnes_touchees",
            "show_avis_consommateurs",
            "show_observation_generale",
            "created_at",
            "updated_at",
        ]
        read_only_fields = ["id", "configure_par", "configure_par_nom", "created_at", "updated_at"]

    def get_configure_par_nom(self, obj):
        if obj.configure_par:
            return obj.configure_par.name
        return None
