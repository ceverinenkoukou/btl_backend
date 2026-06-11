# Generated migration for adding product association to Goodie and GainGoodie

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0011_goodie_campagne_historicalgoodie_campagne_and_more'),
    ]

    operations = [
        # Add fields to Goodie
        migrations.AddField(
            model_name='goodie',
            name='produit_associe',
            field=models.ForeignKey(blank=True, help_text='Produit offert avec ce goodie (ex: boisson)', null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='goodies_offerts', to='btl.produit'),
        ),
        migrations.AddField(
            model_name='goodie',
            name='quantite_produit_associe',
            field=models.PositiveIntegerField(default=1, help_text='Quantité du produit associé à offrir avec ce goodie'),
        ),
        
        # Add fields to GainGoodie
        migrations.AddField(
            model_name='gaingoodie',
            name='produit_associe',
            field=models.ForeignKey(blank=True, help_text='Produit associé offert avec ce goodie', null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='gains_produits_associes', to='btl.produit'),
        ),
        migrations.AddField(
            model_name='gaingoodie',
            name='quantite_produit',
            field=models.PositiveIntegerField(default=1, help_text='Quantité du produit associé remportée avec ce goodie'),
        ),
        migrations.AddField(
            model_name='gaingoodie',
            name='nom_client',
            field=models.CharField(blank=True, help_text='Prénom du client bénéficiaire (optionnel)', max_length=150, null=True),
        ),
    ]
