# Generated migration for adding type_vente field to Vente model

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0012_goodie_produit_associe_gaingoodie_produit'),
    ]

    operations = [
        migrations.AddField(
            model_name='vente',
            name='type_vente',
            field=models.CharField(
                choices=[('NORMAL', 'Vente normale'), ('GRATUIT', 'Offert avec goodie')],
                default='NORMAL',
                max_length=10
            ),
        ),
    ]
