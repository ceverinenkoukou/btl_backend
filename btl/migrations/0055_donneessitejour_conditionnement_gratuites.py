# Generated manually for Django 6.0.5

from django.db import migrations, models


def copier_conditionnement_stock_vers_gratuites(apps, schema_editor):
    """Les entrées existantes n'avaient qu'un seul conditionnement partagé :
    on le reporte tel quel sur le nouveau champ conditionnement_gratuites pour
    ne pas perdre l'information historique (à partir de maintenant les deux
    champs peuvent diverger)."""
    DonneesSiteJour = apps.get_model("btl", "DonneesSiteJour")
    DonneesSiteJour.objects.update(conditionnement_gratuites=models.F("conditionnement_stock"))


def noop(apps, schema_editor):
    pass


class Migration(migrations.Migration):

    dependencies = [
        ("btl", "0054_historicalrapportconfig_show_kpi_personnes_touchees_and_more"),
    ]

    operations = [
        migrations.RenameField(
            model_name="donneessitejour",
            old_name="conditionnement",
            new_name="conditionnement_stock",
        ),
        migrations.RenameField(
            model_name="historicaldonneessitejour",
            old_name="conditionnement",
            new_name="conditionnement_stock",
        ),
        migrations.AlterField(
            model_name="donneessitejour",
            name="conditionnement_stock",
            field=models.CharField(
                choices=[("UNITE", "À l'unité / Détail"), ("PACK", "En Pack")],
                default="UNITE",
                help_text="Conditionnement du stock de boissons (à l'unité ou en pack), selon la configuration des produits de l'entreprise",
                max_length=10,
            ),
        ),
        migrations.AlterField(
            model_name="historicaldonneessitejour",
            name="conditionnement_stock",
            field=models.CharField(
                choices=[("UNITE", "À l'unité / Détail"), ("PACK", "En Pack")],
                default="UNITE",
                help_text="Conditionnement du stock de boissons (à l'unité ou en pack), selon la configuration des produits de l'entreprise",
                max_length=10,
            ),
        ),
        migrations.AddField(
            model_name="donneessitejour",
            name="conditionnement_gratuites",
            field=models.CharField(
                choices=[("UNITE", "À l'unité / Détail"), ("PACK", "En Pack")],
                default="UNITE",
                help_text="Conditionnement des boissons gratuites (à l'unité ou en pack), indépendant du conditionnement du stock",
                max_length=10,
            ),
        ),
        migrations.AddField(
            model_name="historicaldonneessitejour",
            name="conditionnement_gratuites",
            field=models.CharField(
                choices=[("UNITE", "À l'unité / Détail"), ("PACK", "En Pack")],
                default="UNITE",
                help_text="Conditionnement des boissons gratuites (à l'unité ou en pack), indépendant du conditionnement du stock",
                max_length=10,
            ),
        ),
        migrations.RunPython(copier_conditionnement_stock_vers_gratuites, noop),
    ]
