from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("btl", "0046_alter_site_campagne"),
    ]

    operations = [
        migrations.AddField(
            model_name="livraisongoodiesjour",
            name="est_report",
            field=models.BooleanField(
                default=False,
                help_text="Créé automatiquement par report des restants de la veille (tâche nocturne)",
            ),
        ),
    ]
