import os
from celery import Celery

# Définir le module de paramètres Django par défaut pour le programme 'celery'.
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'config.settings')

# Créer l'instance Celery sous le nom exact recherché : 'app' ou 'celery'
app = Celery('btl_project')

# Utiliser une chaîne ici signifie que le worker n'a pas besoin de sérialiser
# l'objet de configuration lors de l'utilisation de configurations Windows.
app.config_from_object('django.conf:settings', namespace='CELERY')

# Charger les tâches de tous les modules de tâches applicatives Django enregistrés.
app.autodiscover_tasks()

# Exposer explicitement une variable nommée 'celery' pour correspondre à ton erreur
celery = app