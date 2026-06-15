from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0015_rapportjournalier_nb_goodies_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='historicalrapportjournalier',
            name='nb_goodies',
            field=models.PositiveIntegerField(default=0, null=True),
        ),
    ]
