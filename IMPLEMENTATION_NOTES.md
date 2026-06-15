# Notes d'integration backend

Branche de travail:

```bash
feature/rapport-ventes-optimise-and-sites-management
```

## Modifications principales

- Ajout du comptage des goodies dans les rapports journaliers:
  - champ `RapportJournalier.nb_goodies`;
  - exposition via serializer;
  - ajout de la colonne `Goodies` dans l'e-mail du rapport journalier;
  - calcul depuis les `GainGoodie`.
- Ajout du ciblage des offres promotionnelles par site:
  - `Promotion.sites` en relation ManyToMany vers `Site`;
  - si `sites` est vide, l'offre reste globale;
  - si `sites` contient des sites, l'offre est disponible uniquement sur ces sites.
- Securisation du gain promotionnel:
  - une hotesse ne peut pas enregistrer une offre sur un site non cible;
  - l'endpoint cree les ventes `NORMAL` et `PROMOTION` quand `produit_id` est fourni.
- Adaptation des endpoints de lecture:
  - `/api/degustations/mon-site/` ne renvoie que les promotions globales ou ciblees sur le site;
  - `/api/campagnes/{id}/rapport-sites/` applique le meme filtre;
  - les statistiques de rapport incluent les goodies distribues.
- Verification des champs de branding deja exposes par le serializer des ventes:
  - `entreprise_logo`;
  - `entreprise_couleur_primaire`;
  - `entreprise_couleur_secondaire`.
- Ajustement Docker local:
  - Postgres expose par defaut `5433:5432`;
  - Redis expose par defaut `6380:6379`.

## Fichiers modifies

```text
compose.yaml
btl/models.py
btl/tasks.py
btl/services/email_service.py
btl/serializers/RapportJournalierSerializer.py
btl/serializers/PromotionSerializer.py
btl/views/ViewPromotions.py
btl/views/ViewCompaigns.py
btl/views/ViewTasting.py
```

## Migrations ajoutees

```text
btl/migrations/0015_rapportjournalier_nb_goodies_and_more.py
btl/migrations/0016_alter_historicalrapportjournalier_nb_goodies.py
btl/migrations/0017_promotion_sites.py
btl/migrations/0018_alter_historicalrapportjournalier_nb_goodies.py
```

Role des migrations:

- `0015`: ajoute `nb_goodies` sur `RapportJournalier` et l'historique.
- `0016`: rend le champ historique compatible avec les insertions `null` de `simple_history`.
- `0017`: ajoute la relation `Promotion.sites`.
- `0018`: aligne le champ historique `nb_goodies` avec le modele courant.

## Prerequis

- Docker et Docker Compose.
- Un fichier `.env` cree depuis `.env.example`.
- Ports locaux disponibles:
  - backend: `8003`;
  - postgres host: `5433`;
  - redis host: `6380`;
  - pgAdmin: `8011`.

Variables importantes:

```env
SECRET_KEY=...
DEBUG=True
ALLOWED_HOSTS=localhost,127.0.0.1
POSTGRES_DB=btl_db
POSTGRES_USER=postgres
POSTGRES_PASSWORD=...
POSTGRES_HOST=btl-db
POSTGRES_PORT=5432
POSTGRES_HOST_PORT=5433
REDIS_HOST_PORT=6380
BACKEND_PORT=8003
CELERY_BROKER_URL=redis://btl-redis:6379/0
CORS_ALLOWED_ORIGINS=http://localhost:3000,http://127.0.0.1:3000
FRONTEND_URL=http://localhost:3000
DEFAULT_FROM_EMAIL=...
```

Pour les e-mails en local, sans configuration Gmail/SMTP, utiliser la console:

```env
EMAIL_BACKEND=django.core.mail.backends.console.EmailBackend
```

## Lancement local

```bash
cd /Users/user/Downloads/BTL/btl_backend-git
cp .env.example .env
docker compose up -d --build
```

Le backend est disponible sur:

```text
http://localhost:8003
```

## Executer les migrations

Avec Docker:

```bash
docker exec btl-backend python manage.py migrate
```

Verifier l'etat:

```bash
docker exec btl-backend python manage.py showmigrations btl
docker exec btl-backend python manage.py check
```

Important: `btl-backend` applique les migrations au demarrage via `SKIP_MIGRATE=false`, mais la commande explicite ci-dessus reste utile en verification.

## Celery et rapports journaliers

Les rapports journaliers sont generes par Celery/Celery Beat.

Apres toute modification dans:

```text
btl/tasks.py
btl/services/email_service.py
```

il faut reconstruire/recreer les services, car `btl-celery` utilise l'image Docker:

```bash
docker compose up -d --build --force-recreate btl-backend btl-celery btl-celery-beat
```

Logs utiles:

```bash
docker logs --tail=100 btl-celery
docker logs --tail=100 btl-celery-beat
docker logs --tail=100 btl-backend
```

## Points a tester avant merge

- `python manage.py check` OK.
- Migrations `0015`, `0016`, `0017` appliquees.
- Creation d'une promotion globale puis ciblage sur un site.
- `/api/degustations/mon-site/?site_id=...` ne renvoie que les offres autorisees pour le site.
- `POST /api/promotions/{id}/enregistrer-gain/` refuse un site non cible.
- Le rapport-sites d'une campagne ne compte que les offres valides pour chaque site.
- Le rapport journalier inclut `nb_goodies`.
- L'e-mail du rapport journalier affiche la colonne `Goodies`.
- Les ventes exposees par `/api/ventes/` contiennent toujours les champs de branding entreprise.

## Commit et push

```bash
git add compose.yaml btl/models.py btl/tasks.py btl/services/email_service.py btl/serializers/RapportJournalierSerializer.py btl/serializers/PromotionSerializer.py btl/views/ViewPromotions.py btl/views/ViewCompaigns.py btl/views/ViewTasting.py btl/migrations/0015_rapportjournalier_nb_goodies_and_more.py btl/migrations/0016_alter_historicalrapportjournalier_nb_goodies.py btl/migrations/0017_promotion_sites.py btl/migrations/0018_alter_historicalrapportjournalier_nb_goodies.py IMPLEMENTATION_NOTES.md
git commit -m "Add site-targeted promotions and report goodies tracking"
git push -u origin feature/rapport-ventes-optimise-and-sites-management
```
