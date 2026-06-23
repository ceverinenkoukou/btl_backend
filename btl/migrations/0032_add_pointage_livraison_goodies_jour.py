import uuid
import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0031_add_rapport_config'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Pointage',
            fields=[
                ('id', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('date', models.DateField(help_text="Date du pointage")),
                ('heure_arrivee', models.TimeField(blank=True, help_text="Heure de pointage à l'arrivée", null=True)),
                ('heure_depart', models.TimeField(blank=True, help_text='Heure de pointage au départ', null=True)),
                ('hotesse', models.ForeignKey(
                    limit_choices_to={'role': 'Hotesse'},
                    on_delete=django.db.models.deletion.CASCADE,
                    related_name='pointages',
                    to=settings.AUTH_USER_MODEL,
                )),
                ('site', models.ForeignKey(
                    on_delete=django.db.models.deletion.CASCADE,
                    related_name='pointages',
                    to='btl.site',
                )),
                ('jour', models.ForeignKey(
                    blank=True,
                    help_text="Jour d'animation associé (optionnel)",
                    null=True,
                    on_delete=django.db.models.deletion.SET_NULL,
                    related_name='pointages',
                    to='btl.jouranimation',
                )),
            ],
            options={
                'verbose_name': "Pointage hôtesse",
                'verbose_name_plural': "Pointages hôtesses",
                'ordering': ['-date', 'heure_arrivee'],
                'unique_together': {('hotesse', 'site', 'date')},
            },
        ),
        migrations.CreateModel(
            name='LivraisonGoodiesJour',
            fields=[
                ('id', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('date', models.DateField(help_text='Date de la livraison')),
                ('quantite_apportee', models.PositiveIntegerField(
                    default=0, help_text='Nombre de goodies apportés sur le site ce jour'
                )),
                ('site', models.ForeignKey(
                    on_delete=django.db.models.deletion.CASCADE,
                    related_name='livraisons_goodies',
                    to='btl.site',
                )),
                ('goodie', models.ForeignKey(
                    on_delete=django.db.models.deletion.CASCADE,
                    related_name='livraisons',
                    to='btl.goodie',
                )),
                ('enregistre_par', models.ForeignKey(
                    blank=True,
                    null=True,
                    on_delete=django.db.models.deletion.SET_NULL,
                    related_name='livraisons_goodies_enregistrees',
                    to=settings.AUTH_USER_MODEL,
                )),
            ],
            options={
                'verbose_name': 'Livraison goodies (jour)',
                'verbose_name_plural': 'Livraisons goodies (jour)',
                'ordering': ['-date'],
                'unique_together': {('site', 'goodie', 'date')},
            },
        ),
    ]
