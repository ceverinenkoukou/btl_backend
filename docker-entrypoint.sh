#!/bin/bash
set -e

echo "Attente de la base de données PostgreSQL..."

# Si on est sur Railway (Production), on extrait l'hôte pour le tester proprement
if [ -n "$DATABASE_URL" ]; then
  # Cette commande magique extrait proprement 'postgres.railway.internal' de ton URL
  DB_HOST=$(echo "$DATABASE_URL" | sed -e 's|.*@||' -e 's|:.*||')
  
  while ! pg_isready -h "$DB_HOST" -p 5432 -U postgres; do
    echo "PostgreSQL en production ($DB_HOST) n'est pas encore prêt..."
    sleep 1
  done
else
  # En local (Docker Compose classique)
  while ! pg_isready -h ${POSTGRES_HOST:-db} -p ${POSTGRES_PORT:-5432} -U ${POSTGRES_USER:-postgres}; do
    echo "PostgreSQL local n'est pas encore prêt..."
    sleep 1
  done
fi

echo "PostgreSQL est prêt !"

# Application des migrations de la base de données
python manage.py migrate --noinput

echo "Démarrage de l'application..."

# Si aucune commande spécifique n'est fournie au conteneur, on démarre Gunicorn
if [ $# -eq 0 ]; then
    # Utilise la variable PORT de Railway (qui sera 8003), ou 8003 par défaut
    TARGET_PORT=${PORT:-8003}
    echo "Lancement de Gunicorn sur le port $TARGET_PORT..."
    exec gunicorn config.wsgi:application --bind 0.0.0.0:$TARGET_PORT
else
    # Sinon, exécute la commande passée (ex: en local avec docker-compose)
    exec "$@"
fi