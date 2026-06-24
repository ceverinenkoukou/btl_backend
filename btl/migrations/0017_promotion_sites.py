from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0016_alter_historicalrapportjournalier_nb_goodies'),
    ]

    operations = [
        migrations.AddField(
            model_name='promotion',
            name='sites',
            field=models.ManyToManyField(
                blank=True,
                help_text="Sites ciblés par l'offre. Vide = offre disponible sur tous les sites de la campagne.",
                related_name='promotions_ciblees',
                to='btl.site',
            ),
        ),
    ]
