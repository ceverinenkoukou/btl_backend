from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0019_fix_gaingoodie_unique_constraint'),
    ]

    operations = [
        migrations.AddField(
            model_name='promotion',
            name='goodies',
            field=models.ManyToManyField(
                blank=True,
                help_text="Goodies disponibles sur la roue pour cette offre promotionnelle",
                related_name='promotions',
                to='btl.goodie',
            ),
        ),
    ]
