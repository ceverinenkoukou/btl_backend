from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0004_historicalproduit_type_conditionnement_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entreprise',
            name='logo_url',
            field=models.TextField(blank=True, help_text="Logo de l'entreprise (URL ou base64 data URI)", null=True),
        ),
    ]
