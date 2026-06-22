from django.db import migrations, models


def add_conditionnement_if_missing(apps, schema_editor):
    connection = schema_editor.connection
    if connection.vendor == 'postgresql':
        with connection.cursor() as cursor:
            cursor.execute("""
                SELECT column_name FROM information_schema.columns
                WHERE table_name = 'btl_promotion' AND column_name = 'conditionnement'
            """)
            if cursor.fetchone():
                return
        schema_editor.execute(
            "ALTER TABLE btl_promotion ADD COLUMN conditionnement varchar(10) NOT NULL DEFAULT 'UNITE'"
        )
    elif connection.vendor == 'sqlite':
        with connection.cursor() as cursor:
            cursor.execute("PRAGMA table_info(btl_promotion)")
            rows = cursor.fetchall()
            if any(row[1] == 'conditionnement' for row in rows):
                return
        schema_editor.execute(
            "ALTER TABLE btl_promotion ADD COLUMN conditionnement varchar(10) NOT NULL DEFAULT 'UNITE'"
        )


def add_historical_conditionnement_if_missing(apps, schema_editor):
    connection = schema_editor.connection
    if connection.vendor == 'postgresql':
        with connection.cursor() as cursor:
            cursor.execute("""
                SELECT column_name FROM information_schema.columns
                WHERE table_name = 'btl_historicalpromotion' AND column_name = 'conditionnement'
            """)
            if cursor.fetchone():
                return
        schema_editor.execute(
            "ALTER TABLE btl_historicalpromotion ADD COLUMN conditionnement varchar(10) NOT NULL DEFAULT 'UNITE'"
        )
    elif connection.vendor == 'sqlite':
        with connection.cursor() as cursor:
            cursor.execute("PRAGMA table_info(btl_historicalpromotion)")
            rows = cursor.fetchall()
            if any(row[1] == 'conditionnement' for row in rows):
                return
        schema_editor.execute(
            "ALTER TABLE btl_historicalpromotion ADD COLUMN conditionnement varchar(10) NOT NULL DEFAULT 'UNITE'"
        )


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0026_merge_migration_conflicts'),
    ]

    operations = [
        migrations.RunPython(
            add_conditionnement_if_missing,
            reverse_code=migrations.RunPython.noop,
        ),
        migrations.SeparateDatabaseAndState(
            database_operations=[],
            state_operations=[
                migrations.AddField(
                    model_name='promotion',
                    name='conditionnement',
                    field=models.CharField(
                        choices=[('UNITE', "À l'unité / Détail"), ('PACK', 'En Pack')],
                        default='UNITE',
                        help_text='Conditionnement requis pour déclencher la promotion : unité ou pack',
                        max_length=10,
                    ),
                ),
            ],
        ),
        migrations.RunPython(
            add_historical_conditionnement_if_missing,
            reverse_code=migrations.RunPython.noop,
        ),
        migrations.SeparateDatabaseAndState(
            database_operations=[],
            state_operations=[
                migrations.AddField(
                    model_name='historicalpromotion',
                    name='conditionnement',
                    field=models.CharField(
                        choices=[('UNITE', "À l'unité / Détail"), ('PACK', 'En Pack')],
                        default='UNITE',
                        help_text='Conditionnement requis pour déclencher la promotion : unité ou pack',
                        max_length=10,
                    ),
                ),
            ],
        ),
    ]
