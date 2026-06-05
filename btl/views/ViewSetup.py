from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from rest_framework.permissions import AllowAny

from btl.models import RemoteUser
from btl.permissions import IsAdmin


@method_decorator(csrf_exempt, name="dispatch")
class SetupAdminView(APIView):
    """
    GET  /api/auth/setup/ — Vérifie si un premier admin existe (public).
    POST /api/auth/setup/ — Crée un administrateur.
                            • Aucune auth requise si aucun admin n'existe encore.
                            • Auth + rôle Admin requis si un admin existe déjà.
    """
    # CORRECTION CRITIQUE : On utilise (None,) ou on surcharge pour bloquer SessionAuthentication 
    # qui générait l'erreur 403 CSRF en arrière-plan.
    authentication_classes = ()  
    permission_classes = [AllowAny]

    def get_permissions(self):
        if self.request.method == "GET":
            return [AllowAny()]
        
        # CORRECTION : On utilise .objects au lieu de .all_objects pour éviter 
        # qu'un admin supprimé logiquement ne bloque la configuration initiale.
        admin_exists = RemoteUser.objects.filter(role=RemoteUser.Roles.ADMIN).exists()
        if not admin_exists:
            return [AllowAny()]
        
        # Si un admin existe déjà, on réactive l'authentification JWT requise pour IsAdmin
        from rest_framework_simplejwt.authentication import JWTAuthentication
        self.request.authenticator = JWTAuthentication()
        return [IsAdmin()]

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