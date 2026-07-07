from django.db import migrations, models


class Migration(migrations.Migration):
    """
    Ajoute est_report à la table historique de LivraisonGoodiesJour.
    La migration 0047 l'avait ajouté à la table principale mais pas à
    btl_historicallivraisongoodiesjour (table simple-history), causant
    une erreur 500 à chaque POST /api/livraisons-goodies/.
    """

    dependencies = [
        ("btl", "0048_vente_tranche_age_genre"),
    ]

    operations = [
        migrations.AddField(
            model_name="historicallivraisongoodiesjour",
            name="est_report",
            field=models.BooleanField(
                default=False,
                help_text="Créé automatiquement par report des restants de la veille (tâche nocturne)",
            ),
        ),
    ]
