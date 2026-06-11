from django.db import models
import logging

from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import RemoteUser
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers import RemoteUserSerializer, CreateUserSerializer, ChangePasswordSerializer
from btl.serializers.TeamSerializer import TeamMemberSerializer
from btl.services.email_service import generer_mot_de_passe_provisoire, envoyer_email_credentials_terrain

logger = logging.getLogger(__name__)


class RemoteUserViewSet(viewsets.ModelViewSet):
    """
    CRUD utilisateurs.
    - Création (POST)  : admin uniquement
    - Lecture (GET)    : filtrée par rôle
    - Modification/Suppression : admin uniquement
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action in ('create', 'destroy', 'update', 'partial_update', 'resend_credentials'):
            return [IsAuthenticated(), IsAdmin()]
        # me + change_password doivent rester accessibles avant le changement de mdp provisoire
        if self.action in ('current_user', 'change_password'):
            return [IsAuthenticated()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_serializer_class(self):
        if self.action == 'create':
            return CreateUserSerializer
        return RemoteUserSerializer

    def get_queryset(self):
        user = self.request.user

        if user.role == RemoteUser.Roles.ADMIN:
            return RemoteUser.objects.all()

        if user.role == RemoteUser.Roles.ENTREPRISES:
            return RemoteUser.objects.filter(
                models.Q(campagnes_assignees__entreprise__user=user) |
                models.Q(campagnes_supervisees__entreprise__user=user)
            ).distinct()

        if user.role == RemoteUser.Roles.SUPERVISEUR:
            return RemoteUser.objects.filter(
                role=RemoteUser.Roles.HOTESSES,
                campagnes_assignees__superviseurs=user
            ).distinct()

        if user.role == RemoteUser.Roles.HOTESSES:
            return RemoteUser.objects.filter(id=user.id)

        return RemoteUser.objects.none()

    def create(self, request, *args, **kwargs):
        """
        POST /api/users/
        Crée un utilisateur (hôtesse ou superviseur) avec un mot de passe provisoire
        et lui envoie ses identifiants par email.
        Les entreprises sont créées via /api/entreprises/.
        """
        serializer = CreateUserSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)

        role = serializer.validated_data.get('role', RemoteUser.Roles.NON_DEFINI)
        if role == RemoteUser.Roles.ENTREPRISES:
            return Response(
                {"detail": "Utilisez l'endpoint /api/entreprises/ pour créer une entreprise."},
                status=status.HTTP_400_BAD_REQUEST
            )

        password = serializer.validated_data.pop('password', None) or generer_mot_de_passe_provisoire()

        user = RemoteUser.objects.create_user(
            email=serializer.validated_data['email'],
            username=serializer.validated_data.get('username'),
            name=serializer.validated_data['name'],
            role=role,
            password=password,
        )

        email_sent = False
        try:
            # Import direct absolu
            import btl.tasks as btl_tasks
            btl_tasks.task_envoyer_email_credentials_terrain.delay(user.id, password)
            email_sent = True
        except Exception:
            logger.exception(
                "Échec de la mise en file d'attente Celery pour %s (%s)",
                user.name,
                user.email,
            )
        data = RemoteUserSerializer(user).data
        data['email_sent'] = email_sent
        return Response(data, status=status.HTTP_201_CREATED)

    @action(detail=False, methods=['get'], url_path='me')
    def current_user(self, request):
        """GET /api/users/me/ — Profil de l'utilisateur connecté."""
        serializer = RemoteUserSerializer(request.user)
        return Response(serializer.data)

    @action(detail=False, methods=['post'], url_path='change-password',
            permission_classes=[IsAuthenticated])
    def change_password(self, request):
        """
        POST /api/users/change-password/
        Accessible même si is_password_changed=False (c'est le but de cet endpoint).
        """
        user = request.user
        serializer = ChangePasswordSerializer(data=request.data, context={'request': request})
        if serializer.is_valid():
            user.set_password(serializer.validated_data['new_password'])
            user.is_password_changed = True
            user.save()
            return Response({"detail": "Mot de passe mis à jour avec succès."}, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    @action(detail=True, methods=['post'], url_path='resend-credentials',
            permission_classes=[IsAuthenticated, IsAdmin])
    def resend_credentials(self, request, pk=None):
        """
        POST /api/users/{id}/resend-credentials/
        Génère un nouveau mot de passe aléatoire, le définit sur l'utilisateur
        et renvoie l'e-mail avec les identifiants.
        Réinitialise aussi is_password_changed à False.
        """
        user = self.get_object()
        password = generer_mot_de_passe_provisoire()
        user.set_password(password)
        user.is_password_changed = False
        user.save()

        email_sent = False
        try:
            import btl.tasks as btl_tasks
            btl_tasks.task_envoyer_email_credentials_terrain.delay(user.id, password)
            email_sent = True
        except Exception:
            logger.exception(
                "Échec de la mise en file d'attente pour renvoyer les identifiants à %s",
                user.email,
            )

        return Response(
            {"detail": f"Identifiants régénérés et envoyés à {user.email}.", "email_sent": email_sent},
            status=status.HTTP_200_OK,
        )

    @action(detail=False, methods=['get'], url_path='terrain-staff',
            permission_classes=[IsAuthenticated, IsPasswordChanged])
    def terrain_staff(self, request):
        """GET /api/users/terrain-staff/ — Staff terrain actif (hôtesses + superviseurs)."""
        staff = RemoteUser.objects.filter(
            role__in=[RemoteUser.Roles.HOTESSES, RemoteUser.Roles.SUPERVISEUR],
            is_active=True
        )
        serializer = TeamMemberSerializer(staff, many=True)
        return Response(serializer.data)