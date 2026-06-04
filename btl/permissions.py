from rest_framework.permissions import BasePermission
from btl.models import RemoteUser


class IsAdmin(BasePermission):
    """Seul l'administrateur système peut accéder à cette ressource."""
    message = "Accès réservé aux administrateurs."

    def has_permission(self, request, view):
        return bool(
            request.user
            and request.user.is_authenticated
            and request.user.role == RemoteUser.Roles.ADMIN
        )


class IsAdminOrReadOnly(BasePermission):
    """L'admin peut tout faire ; les autres peuvent seulement lire."""
    message = "Accès en écriture réservé aux administrateurs."

    def has_permission(self, request, view):
        if request.method in ('GET', 'HEAD', 'OPTIONS'):
            return bool(request.user and request.user.is_authenticated)
        return bool(
            request.user
            and request.user.is_authenticated
            and request.user.role == RemoteUser.Roles.ADMIN
        )


class IsSuperviseurOrAdmin(BasePermission):
    """Superviseurs et administrateurs uniquement."""
    message = "Accès réservé aux superviseurs et administrateurs."

    def has_permission(self, request, view):
        return bool(
            request.user
            and request.user.is_authenticated
            and request.user.role in (RemoteUser.Roles.SUPERVISEUR, RemoteUser.Roles.ADMIN)
        )


class IsPasswordChanged(BasePermission):
    """
    Bloque l'accès si l'utilisateur n'a pas encore changé son mot de passe provisoire.
    À appliquer en complément d'IsAuthenticated sur toutes les vues métier.
    """
    message = "Vous devez changer votre mot de passe provisoire avant de continuer."

    def has_permission(self, request, view):
        if not request.user or not request.user.is_authenticated:
            return False
        if request.user.role == RemoteUser.Roles.ADMIN:
            return True
        return request.user.is_password_changed
