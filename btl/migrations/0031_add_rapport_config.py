import uuid
import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0030_alter_jouranimation_managers_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='RapportConfig',
            fields=[
                ('id', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('created_at', models.DateTimeField(auto_now_add=True, null=True)),
                ('updated_at', models.DateTimeField(auto_now=True, null=True)),
                ('is_deleted', models.BooleanField(default=False)),
                # En-tête
                ('titre_personnalise', models.CharField(blank=True, help_text='Titre personnalisé affiché sur la page de couverture (remplace le nom de la campagne)', max_length=255, null=True)),
                ('sous_titre_personnalise', models.CharField(blank=True, help_text="Sous-titre personnalisé (ex: 'Rapport Confidentiel')", max_length=255, null=True)),
                # KPIs
                ('show_kpi_degustations', models.BooleanField(default=True, help_text='Afficher le KPI consommations')),
                ('show_kpi_ventes', models.BooleanField(default=True, help_text='Afficher le KPI distributions/ventes')),
                ('show_kpi_ca', models.BooleanField(default=True, help_text="Afficher le KPI chiffre d'affaires")),
                ('show_kpi_goodies', models.BooleanField(default=True, help_text='Afficher le KPI goodies distribués')),
                ('show_kpi_sites', models.BooleanField(default=True, help_text='Afficher le KPI nombre de sites actifs')),
                # Sections
                ('show_section_offres_promo', models.BooleanField(default=True, help_text='Section : Offres promotionnelles')),
                ('show_section_gains_goodies', models.BooleanField(default=True, help_text='Section : Gains de goodies par site')),
                ('show_section_perf_hotesses', models.BooleanField(default=True, help_text='Section : Performance des hôtesses (rapport interne)')),
                ('show_section_perf_sites', models.BooleanField(default=True, help_text='Section : Performances par site')),
                ('show_section_goodies_par_site', models.BooleanField(default=True, help_text='Section : Goodies distribués par site')),
                ('show_section_offres_par_hotesse', models.BooleanField(default=True, help_text='Section : Offres par hôtesse (rapport interne)')),
                # Colonnes
                ('show_col_ca', models.BooleanField(default=True, help_text="Colonne : Chiffre d'affaires dans les tableaux")),
                ('show_col_goodies', models.BooleanField(default=True, help_text='Colonne : Goodies dans les tableaux')),
                ('show_col_promo_details', models.BooleanField(default=True, help_text='Colonne : Détails promotionnels (offerts, tickets)')),
                ('show_col_performance', models.BooleanField(default=True, help_text='Colonne : Taux de performance dans les tableaux')),
                # Options générales
                ('show_logo', models.BooleanField(default=True, help_text="Afficher le logo de l'entreprise")),
                ('show_equipe_hotesses', models.BooleanField(default=True, help_text='Inclure les données individuelles des hôtesses (rapport interne)')),
                ('inclure_notes_sensorielles', models.BooleanField(default=False, help_text='Inclure les statistiques sensorielles (note goût, ambiance)')),
                # FK
                ('campagne', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, related_name='rapport_config', to='btl.campagne')),
                ('configure_par', models.ForeignKey(blank=True, help_text='Superviseur ou admin ayant défini cette configuration', null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='configs_rapports', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name': 'Configuration rapport',
                'verbose_name_plural': 'Configurations rapports',
            },
        ),
    ]
