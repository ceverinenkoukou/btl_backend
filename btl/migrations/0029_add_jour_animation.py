import datetime
import uuid
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0028_merge_20260622_1157'),
    ]

    operations = [
        migrations.CreateModel(
            name='JourAnimation',
            fields=[
                ('id', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('is_deleted', models.BooleanField(default=False)),
                ('date', models.DateField(help_text="Date de l'animation")),
                ('heure_ouverture', models.TimeField(default=datetime.time(8, 0))),
                ('heure_fermeture', models.TimeField(default=datetime.time(18, 0))),
                ('campagne', models.ForeignKey(
                    on_delete=django.db.models.deletion.CASCADE,
                    related_name='jours_animation',
                    to='btl.campagne',
                )),
                ('site', models.ForeignKey(
                    blank=True,
                    help_text='Laisser vide pour appliquer à tous les sites de la campagne.',
                    null=True,
                    on_delete=django.db.models.deletion.CASCADE,
                    related_name='horaires',
                    to='btl.site',
                )),
            ],
            options={
                'ordering': ['date', 'heure_ouverture'],
                'unique_together': {('campagne', 'site', 'date')},
            },
        ),
    ]
