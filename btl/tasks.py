from config.celery import app

@app.task(bind=True, max_retries=3)
def task_envoyer_email_bienvenue_entreprise(self, entreprise_id, password):
    # Imports locaux à l'intérieur de la tâche
    from btl.models import Entreprise
    from btl.services.email_service import envoyer_email_bienvenue_entreprise
    
    try:
        entreprise = Entreprise.objects.get(id=entreprise_id)
        envoyer_email_bienvenue_entreprise(entreprise, password)
    except Exception as exc:
        raise self.retry(exc=exc, countdown=60)

@app.task(bind=True, max_retries=3)
def task_envoyer_email_credentials_terrain(self, user_id, password):
    # Imports locaux à l'intérieur de la tâche
    from btl.models import RemoteUser
    from btl.services.email_service import envoyer_email_credentials_terrain
    
    try:
        user = RemoteUser.objects.get(id=user_id)
        envoyer_email_credentials_terrain(user, password)
    except Exception as exc:
        raise self.retry(exc=exc, countdown=60)