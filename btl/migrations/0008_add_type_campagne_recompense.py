from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("btl", "0007_add_objectifs_campagne"),
    ]

    operations = [
        migrations.AddField(
            model_name="campagne",
            name="type_campagne",
            field=models.CharField(
                choices=[
                    ("DEGUSTATION", "Dégustation"),
                    ("VENTE", "Vente"),
                    ("DEGUSTATION_VENTE", "Dégustation-Vente"),
                ],
                default="DEGUSTATION_VENTE",
                help_text="Détermine les indicateurs et formulaires affichés sur les Dashboards.",
                max_length=20,
            ),
        ),
        migrations.AddField(
            model_name="campagne",
            name="type_recompense",
            field=models.CharField(
                choices=[
                    ("AUCUNE", "Aucune"),
                    ("GOODIES", "Goodies (Roue de la fortune)"),
                    ("PROMOTIONS", "Promotions (Produits offerts)"),
                ],
                default="AUCUNE",
                help_text="Définit si la campagne implique des goodies ou des mécaniques promotionnelles.",
                max_length=20,
            ),
        ),
        migrations.AddField(
            model_name="historicalcampagne",
            name="type_campagne",
            field=models.CharField(
                choices=[
                    ("DEGUSTATION", "Dégustation"),
                    ("VENTE", "Vente"),
                    ("DEGUSTATION_VENTE", "Dégustation-Vente"),
                ],
                default="DEGUSTATION_VENTE",
                help_text="Détermine les indicateurs et formulaires affichés sur les Dashboards.",
                max_length=20,
            ),
        ),
        migrations.AddField(
            model_name="historicalcampagne",
            name="type_recompense",
            field=models.CharField(
                choices=[
                    ("AUCUNE", "Aucune"),
                    ("GOODIES", "Goodies (Roue de la fortune)"),
                    ("PROMOTIONS", "Promotions (Produits offerts)"),
                ],
                default="AUCUNE",
                help_text="Définit si la campagne implique des goodies ou des mécaniques promotionnelles.",
                max_length=20,
            ),
        ),
    ]
