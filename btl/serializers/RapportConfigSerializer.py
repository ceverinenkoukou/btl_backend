from rest_framework import serializers
from btl.models import RapportConfig


class RapportConfigSerializer(serializers.ModelSerializer):
    configure_par_nom = serializers.SerializerMethodField(read_only=True)

    class Meta:
        model = RapportConfig
        fields = [
            "id",
            "campagne",
            "configure_par",
            "configure_par_nom",
            # En-tête
            "titre_personnalise",
            "sous_titre_personnalise",
            # KPIs
            "show_kpi_degustations",
            "show_kpi_ventes",
            "show_kpi_ca",
            "show_kpi_goodies",
            "show_kpi_sites",
            # Sections
            "show_section_offres_promo",
            "show_section_gains_goodies",
            "show_section_perf_hotesses",
            "show_section_perf_sites",
            "show_section_goodies_par_site",
            "show_section_offres_par_hotesse",
            "show_section_detail_degustations",
            "show_section_horaires_sites",
            # Colonnes
            "show_col_ca",
            "show_col_goodies",
            "show_col_promo_details",
            "show_col_performance",
            "show_col_nom_client",
            "show_col_tranche_age",
            "show_col_intention_achat",
            # Options générales
            "show_logo",
            "show_equipe_hotesses",
            "inclure_notes_sensorielles",
            # Observations manuelles
            "show_observations",
            "observations_manuelles",
            "created_at",
            "updated_at",
        ]
        read_only_fields = ["id", "configure_par", "configure_par_nom", "created_at", "updated_at"]

    def get_configure_par_nom(self, obj):
        if obj.configure_par:
            return obj.configure_par.name
        return None
