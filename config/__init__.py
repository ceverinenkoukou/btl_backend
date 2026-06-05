from .celery import app as celery_app

# Cela garantit que l'application est toujours importée lorsque
# Django démarre pour que shared_task utilise cette application.
__all__ = ('celery_app',)