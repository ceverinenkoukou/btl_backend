# Etape 1: Build stage
FROM python:3.12-slim AS builder

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

# Installer les dépendances système POUR LE BUILD
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Copier et installer les dépendances Python
COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# ---------------------------------------------------

# Etape 2: Production stage
FROM python:3.12-slim

WORKDIR /app

# Installer SEULEMENT les dépendances runtime
RUN apt-get update && apt-get install -y --no-install-recommends \
    postgresql-client \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Créer un utilisateur non-root
RUN useradd -m -u 1000 django && \
    mkdir -p /app/media /app/staticfiles && \
    chown -R django:django /app

# Copier les packages Python depuis le builder
COPY --from=builder /usr/local/lib/python3.12/site-packages /usr/local/lib/python3.12/site-packages
COPY --from=builder /usr/local/bin /usr/local/bin

# Copier le code de l'application
COPY --chown=django:django . .

# S'assurer que le script d'entrypoint a les permissions d'exécution
RUN chmod +x /app/docker-entrypoint.sh

# Variables d'environnement
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    DJANGO_SETTINGS_MODULE=config.settings

# Changer vers l'utilisateur non-root
USER django

# L'instruction EXPOSE est indicative, Railway l'ignore et utilise les paramètres de l'interface
EXPOSE 8003

ENTRYPOINT ["/bin/sh", "/app/docker-entrypoint.sh"]

# CORRECTION : On laisse CMD vide pour que notre script docker-entrypoint applique sa logique automatique sur le bon port !
CMD []