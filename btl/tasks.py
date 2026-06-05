import logging
from celery import shared_task
from btl.models import Entreprise, RemoteUser
from btl.services.email_service import envoyer_email_bienvenue_entreprise, envoyer_email_credentials_terrain

logger = logging.getLogger(__name__)

@shared_task(bind=True, max_retries=3, default_retry_delay=60)
def task_envoyer_email_bienvenue_entreprise(self, entreprise_id, password):
    """Tâche asynchrone pour l'email de bienvenue de l'entreprise."""
    try:
        entreprise = Entreprise.objects.get(id=entreprise_id)
        envoyer_email_bienvenue_entreprise(entreprise, password)
        return True
    except Entreprise.DoesNotExist:
        logger.error("Entreprise ID %s introuvable.", entreprise_id)
        return False
    except Exception as exc:
        logger.warning("Échec de l'envoi de l'email pour l'entreprise %s. Nouvelle tentative...", entreprise_id)
        raise self.retry(exc=exc)

@shared_task(bind=True, max_retries=3, default_retry_delay=60)
def task_envoyer_email_credentials_terrain(self, user_id, password):
    """Tâche asynchrone pour l'email des identifiants du staff terrain."""
    try:
        user = RemoteUser.objects.get(id=user_id)
        envoyer_email_credentials_terrain(user, password)
        return True
    except RemoteUser.DoesNotExist:
        logger.error("Utilisateur ID %s introuvable.", user_id)
        return False
    except Exception as exc:
        logger.warning("Échec de l'envoi de l'email pour l'utilisateur %s. Nouvelle tentative...", user_id)
        raise self.retry(exc=exc)