from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework.permissions import AllowAny

from btl.models import RemoteUser
from btl.permissions import IsAdmin
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt

@method_decorator(csrf_exempt, name="dispatch")
class SetupAdminView(APIView):
    """
    GET  /api/auth/setup/ — Vérifie si un premier admin existe (public).
    POST /api/auth/setup/ — Crée un administrateur.
                            • Aucune auth requise si aucun admin n'existe encore.
                            • Auth + rôle Admin requis si un admin existe déjà.
    """
    # CORRECTION ICI : On écrase la configuration globale pour permettre la flexibilité des requêtes
    authentication_classes = []  # Permet de recevoir des requêtes sans Token JWT obligatoire
    permission_classes = [AllowAny] # Donne une permission par défaut, gérée dynamiquement après

    def get_permissions(self):
        if self.request.method == "GET":
            return [AllowAny()]
        
        # Utilisation de all_objects pour vérifier l'existence globale des admins
        admin_exists = RemoteUser.all_objects.filter(role=RemoteUser.Roles.ADMIN).exists()
        if not admin_exists:
            return [AllowAny()]
        
        # Si un admin existe, on réactive la sécurité habituelle
        # Note : Si IsAdmin() exige que l'utilisateur soit connecté, tu peux avoir besoin 
        # de réimporter ou d'ajouter l'authentification JWT ici si nécessaire pour les admins suivants.
        from rest_framework_simplejwt.authentication import JWTAuthentication
        self.request.authenticator = JWTAuthentication()
        return [IsAdmin()]

    def get(self, request):
        admin_exists = RemoteUser.all_objects.filter(role=RemoteUser.Roles.ADMIN).exists()
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