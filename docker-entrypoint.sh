#!/bin/bash
set -e

echo "Attente de la base de données PostgreSQL..."

# Si la variable DATABASE_URL est définie (Production sur Railway)
if [ -n "$DATABASE_URL" ]; then
  while ! pg_isready -d "$DATABASE_URL"; do
    echo "PostgreSQL (via DATABASE_URL) n'est pas encore prêt..."
    sleep 1
  done
else
  # Sinon, on utilise la méthode classique (Local avec Docker Compose)
  while ! pg_isready -h ${POSTGRES_HOST:-db} -p ${POSTGRES_PORT:-5432} -U ${POSTGRES_USER:-postgres}; do
    echo "PostgreSQL local n'est pas encore prêt..."
    sleep 1
  done
fi

echo "PostgreSQL est prêt!"

# Application des migrations de la base de données
python manage.py migrate --noinput

echo "Démarrage de l'application..."
exec "$@"