#!/bin/bash
set -e

echo "╔══════════════════════════════════════════╗"
echo "║       BTL — Démarrage du container       ║"
echo "╚══════════════════════════════════════════╝"

# ─────────────────────────────────────────────
# 1. Attente PostgreSQL
# ─────────────────────────────────────────────
echo "⏳ Attente de PostgreSQL..."

if [ -n "$DATABASE_URL" ]; then
  # Production Railway : extraire l'hôte depuis DATABASE_URL
  DB_HOST=$(echo "$DATABASE_URL" | sed -e 's|.*@||' -e 's|:.*||')
  DB_PORT=5432
  DB_USER=postgres
else
  # Local Docker Compose
  DB_HOST=${POSTGRES_HOST:-btl-db}
  DB_PORT=${POSTGRES_PORT:-5432}
  DB_USER=${POSTGRES_USER:-postgres}
fi

MAX_TRIES=30
COUNT=0
until pg_isready -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" > /dev/null 2>&1; do
  COUNT=$((COUNT + 1))
  if [ $COUNT -ge $MAX_TRIES ]; then
    echo "❌ PostgreSQL inaccessible après ${MAX_TRIES}s — abandon."
    exit 1
  fi
  echo "   PostgreSQL ($DB_HOST:$DB_PORT) pas encore prêt... ($COUNT/$MAX_TRIES)"
  sleep 1
done
echo "✅ PostgreSQL est prêt !"

# ─────────────────────────────────────────────
# 2. Migrations — uniquement pour le backend
#    Les workers Celery sautent cette étape
# ─────────────────────────────────────────────
SKIP_MIGRATE=${SKIP_MIGRATE:-false}

if [ "$SKIP_MIGRATE" = "false" ]; then
  echo "🔄 Application des migrations Django..."
  # On retire set -e temporairement pour afficher l'erreur proprement
  set +e
  python manage.py migrate --noinput
  MIGRATE_EXIT=$?
  set -e

  if [ $MIGRATE_EXIT -ne 0 ]; then
    echo "❌ Les migrations ont échoué (code $MIGRATE_EXIT)."
    echo "   Vérifie les logs ci-dessus pour plus de détails."
    exit $MIGRATE_EXIT
  fi
  echo "✅ Migrations appliquées !"
else
  echo "⏭️  Migrations ignorées (SKIP_MIGRATE=true)"
fi

# ─────────────────────────────────────────────
# 3. Collecte des fichiers statiques (prod uniquement)
# ─────────────────────────────────────────────
if [ "${DEBUG:-true}" = "false" ]; then
  echo "📦 Collecte des fichiers statiques..."
  python manage.py collectstatic --noinput --clear > /dev/null 2>&1 && echo "✅ Statiques collectés !" || echo "⚠️  collectstatic a échoué (non bloquant)"
fi

# ─────────────────────────────────────────────
# 4. Lancement
# ─────────────────────────────────────────────
echo "🚀 Démarrage : ${@:-gunicorn}"

if [ $# -eq 0 ]; then
  TARGET_PORT=${PORT:-8003}
  echo "   Gunicorn → 0.0.0.0:$TARGET_PORT"
  exec gunicorn config.wsgi:application \
    --bind 0.0.0.0:$TARGET_PORT \
    --workers ${GUNICORN_WORKERS:-2} \
    --timeout ${GUNICORN_TIMEOUT:-120} \
    --log-level info \
    --access-logfile -
else
  exec "$@"
fi