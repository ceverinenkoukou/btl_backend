import django.db.models.deletion
import uuid
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("btl", "0008_add_type_campagne_recompense"),
    ]

    operations = [
        migrations.CreateModel(
            name="Promotion",
            fields=[
                ("id", models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ("created_at", models.DateTimeField(auto_now_add=True)),
                ("updated_at", models.DateTimeField(auto_now=True)),
                (
                    "campagne",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="promotions",
                        to="btl.campagne",
                    ),
                ),
                (
                    "type_promotion",
                    models.CharField(
                        choices=[("OFFERT", "Produit offert"), ("GAGNE", "À gagner / Bon cadeau")],
                        default="OFFERT",
                        max_length=10,
                    ),
                ),
                (
                    "quantite_requise",
                    models.PositiveIntegerField(
                        default=1,
                        help_text="Nombre de produits à acheter pour déclencher la promotion",
                    ),
                ),
                (
                    "recompense_description",
                    models.CharField(
                        help_text="Ex: 1 produit offert, bon cadeau Fnac…",
                        max_length=255,
                    ),
                ),
                ("is_active", models.BooleanField(default=True)),
            ],
            options={"abstract": False},
        ),
    ]
