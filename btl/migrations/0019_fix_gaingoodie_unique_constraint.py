from django.db import migrations, models


def drop_unique_together_if_exists(apps, schema_editor):
    """
    Supprime la contrainte unique_together (degustation_id, site_id, goodie_id)
    sur btl_gaingoodie uniquement si elle existe en base.
    Évite le ValueError quand la contrainte est absente.
    """
    connection = schema_editor.connection
    db_vendor = connection.vendor  # 'postgresql', 'sqlite', 'mysql'

    if db_vendor == 'postgresql':
        with connection.cursor() as cursor:
            cursor.execute("""
                SELECT constraint_name
                FROM information_schema.table_constraints
                WHERE table_name = 'btl_gaingoodie'
                  AND constraint_type = 'UNIQUE'
                  AND constraint_name LIKE '%degustation%'
            """)
            rows = cursor.fetchall()
            for (constraint_name,) in rows:
                cursor.execute(
                    f'ALTER TABLE btl_gaingoodie DROP CONSTRAINT IF EXISTS "{constraint_name}"'
                )
    elif db_vendor == 'sqlite':
        # SQLite ne supporte pas DROP CONSTRAINT — la contrainte sera écrasée
        # par la nouvelle UniqueConstraint conditionnelle sans action nécessaire.
        pass


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0018_alter_historicalrapportjournalier_nb_goodies'),
    ]

    operations = [
        migrations.RunPython(
            drop_unique_together_if_exists,
            reverse_code=migrations.RunPython.noop,
        ),
        migrations.SeparateDatabaseAndState(
            database_operations=[],
            state_operations=[
                migrations.AlterUniqueTogether(
                    name='gaingoodie',
                    unique_together=set(),
                ),
            ],
        ),
        migrations.AddConstraint(
            model_name='gaingoodie',
            constraint=models.UniqueConstraint(
                condition=models.Q(degustation__isnull=False),
                fields=['degustation', 'site', 'goodie'],
                name='unique_gaingoodie_per_degustation',
            ),
        ),
    ]
