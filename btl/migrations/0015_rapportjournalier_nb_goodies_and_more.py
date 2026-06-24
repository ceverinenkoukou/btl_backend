from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0014_historicalgaingoodie_nom_client_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='historicalrapportjournalier',
            name='nb_goodies',
            field=models.PositiveIntegerField(default=0),
        ),
        migrations.AddField(
            model_name='rapportjournalier',
            name='nb_goodies',
            field=models.PositiveIntegerField(default=0),
        ),
    ]
