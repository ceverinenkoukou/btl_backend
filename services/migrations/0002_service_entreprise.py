import django.db.models.deletion
from django.db import migrations, models


def backfill_service_entreprise(apps, schema_editor):
    """Reprend l'entreprise de la campagne service existante pour chaque
    Service déjà créé (avant que Service ne soit rattaché directement à
    Entreprise)."""
    Service = apps.get_model('services', 'Service')
    for service in Service.objects.select_related('campagne_service').all():
        if service.campagne_service_id and service.entreprise_id is None:
            service.entreprise_id = service.campagne_service.entreprise_id
            service.save(update_fields=['entreprise'])


def noop_reverse(apps, schema_editor):
    pass


class Migration(migrations.Migration):

    dependencies = [
        ("services", "0001_initial"),
    ]

    operations = [
        # 1. Ajout nullable d'abord, pour pouvoir backfiller les lignes existantes.
        migrations.AddField(
            model_name="service",
            name="entreprise",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                related_name="services",
                to="btl.entreprise",
            ),
        ),
        migrations.AddField(
            model_name="historicalservice",
            name="entreprise",
            field=models.ForeignKey(
                blank=True,
                db_constraint=False,
                null=True,
                on_delete=django.db.models.deletion.DO_NOTHING,
                related_name="+",
                to="btl.entreprise",
            ),
        ),
        # 2. Backfill depuis campagne_service.entreprise pour les lignes existantes.
        migrations.RunPython(backfill_service_entreprise, noop_reverse),
        # 3. Passage en non-nullable une fois les lignes existantes renseignées.
        migrations.AlterField(
            model_name="service",
            name="entreprise",
            field=models.ForeignKey(
                on_delete=django.db.models.deletion.CASCADE,
                related_name="services",
                to="btl.entreprise",
            ),
        ),
        # 4. Suppression de l'ancien rattachement à CampagneService.
        migrations.RemoveField(
            model_name="service",
            name="campagne_service",
        ),
        migrations.RemoveField(
            model_name="historicalservice",
            name="campagne_service",
        ),
        # 5. CampagneService choisit désormais parmi les services de l'entreprise
        #    (vide = tous disponibles, cf. get_services_disponibles()).
        migrations.AddField(
            model_name="campagneservice",
            name="services",
            field=models.ManyToManyField(
                blank=True, related_name="campagnes_services", to="services.service"
            ),
        ),
    ]
