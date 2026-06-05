from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework.permissions import AllowAny

from btl.models import RemoteUser


@method_decorator(csrf_exempt, name="dispatch")
class SetupAdminView(APIView):
    """
    Endpoint temporaire totalement ouvert pour le développement.
    GET  /api/auth/setup/ — Vérifie si un admin existe (public).
    POST /api/auth/setup/ — Crée un administrateur (public, aucune restriction).
    """
    # Désactive l'authentification de session (évite les erreurs 403 CSRF)
    authentication_classes = ()  
    # Autorise absolument tout le monde à accéder à cet endpoint
    permission_classes = [AllowAny]

    def get_permissions(self):
        # On renvoie AllowAny pour le GET et le POST sans aucune condition
        return [AllowAny()]

    def get(self, request):
        admin_exists = RemoteUser.objects.filter(role=RemoteUser.Roles.ADMIN).exists()
        return Response({"setup_required": not admin_exists})

    def post(self, request):
        email = request.data.get("email", "").strip()
        password = request.data.get("password", "")
        name = request.data.get("name", "").strip()

        if not email or not password or not name:
            return Response(
                {"detail": "Nom, email et mot de passe sont requis."},
                status=status.HTTP_400_BAD_REQUEST,
            )

        try:
            # create_superuser crée directement un utilisateur avec le rôle et les accès max
            admin = RemoteUser.objects.create_superuser(
                email=email,
                name=name,
                password=password,
            )
            return Response(
                {"detail": f"Administrateur '{admin.name}' créé avec succès."},
                status=status.HTTP_201_CREATED,
            )
        except Exception as e:
            return Response({"detail": str(e)}, status=status.HTTP_400_BAD_REQUEST)