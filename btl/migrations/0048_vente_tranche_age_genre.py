from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("btl", "0047_add_est_report_to_livraisongoodiesjour"),
    ]

    operations = [
        migrations.AddField(
            model_name="vente",
            name="tranche_age",
            field=models.CharField(
                blank=True,
                choices=[
                    ("MOINS_18", "-18 ans"),
                    ("18_25", "18-25 ans"),
                    ("26_35", "26-35 ans"),
                    ("36_50", "36-50 ans"),
                    ("PLUS_50", "+50 ans"),
                ],
                max_length=20,
                null=True,
                help_text="Tranche d'âge du client (optionnel)",
            ),
        ),
        migrations.AddField(
            model_name="vente",
            name="genre",
            field=models.CharField(
                blank=True,
                choices=[("HOMME", "Homme"), ("FEMME", "Femme")],
                max_length=10,
                null=True,
                help_text="Genre du client (optionnel)",
            ),
        ),
    ]
