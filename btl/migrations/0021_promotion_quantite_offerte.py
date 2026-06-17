from django.db import migrations, models


def add_quantite_offerte_if_missing(apps, schema_editor):
    connection = schema_editor.connection
    with connection.cursor() as cursor:
        if connection.vendor == 'postgresql':
            cursor.execute("""
                SELECT column_name FROM information_schema.columns
                WHERE table_name = 'btl_promotion' AND column_name = 'quantite_offerte'
            """)
        elif connection.vendor == 'sqlite':
            cursor.execute("PRAGMA table_info(btl_promotion)")
            rows = cursor.fetchall()
            if any(row[1] == 'quantite_offerte' for row in rows):
                return
            schema_editor.execute(
                "ALTER TABLE btl_promotion ADD COLUMN quantite_offerte integer NOT NULL DEFAULT 1"
            )
            return
        else:
            return
        if cursor.fetchone():
            return
    schema_editor.execute(
        "ALTER TABLE btl_promotion ADD COLUMN quantite_offerte integer NOT NULL DEFAULT 1"
    )


class Migration(migrations.Migration):

    dependencies = [
        ('btl', '0020_promotion_goodies'),
    ]

    operations = [
        migrations.RunPython(
            add_quantite_offerte_if_missing,
            reverse_code=migrations.RunPython.noop,
        ),
        migrations.SeparateDatabaseAndState(
            database_operations=[],
            state_operations=[
                migrations.AddField(
                    model_name='promotion',
                    name='quantite_offerte',
                    field=models.PositiveIntegerField(
                        default=1,
                        help_text="Nombre de produits offerts au client lors du déclenchement de l'offre",
                    ),
                ),
            ],
        ),
    ]
