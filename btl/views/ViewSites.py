from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db.models import Q

from btl.models import Site, RemoteUser
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers import SiteListSerializer, SiteDetailSerializer, SiteWriteSerializer
from btl.serializers.CampagneSerializer import ManageTeamSerializer
from btl.services.email_service import envoyer_email_assignation_campagne


class SiteViewSet(viewsets.ModelViewSet):
    """
    CRUD sites.
    - Création/modification/suppression : admin uniquement.
    - Lecture : filtrée par rôle.
    - manage-team : assigne l'équipe du site et notifie par email.
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action in ('create', 'destroy', 'update', 'partial_update'):
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_serializer_class(self):
        if self.action in ('create', 'update', 'partial_update'):
            return SiteWriteSerializer
        if self.action == 'list':
            return SiteListSerializer
        return SiteDetailSerializer

    def get_queryset(self):
        user = self.request.user

        if user.role == RemoteUser.Roles.ADMIN:
            return Site.objects.all()

        if user.role == RemoteUser.Roles.ENTREPRISES:
            # Inclut les sites sans campagne produit, rattachés uniquement
            # à une campagne service de cette entreprise.
            return Site.objects.filter(
                Q(campagne__entreprise__user=user) | Q(campagnes_services__entreprise__user=user)
            ).distinct()

        if user.role == RemoteUser.Roles.SUPERVISEUR:
            return user.sites_supervises.all()

        if user.role == RemoteUser.Roles.HOTESSES:
            return user.sites_assignes.all()

        return Site.objects.none()

    @action(detail=True, methods=['post'], url_path='manage-team',
            permission_classes=[IsAuthenticated, IsAdmin])
    def manage_team(self, request, pk=None):
        """
        POST /api/sites/{id}/manage-team/
        Assigne (ou remplace) l'équipe d'un site spécifique.
        Envoie un email de notification à chaque nouveau membre si notify=True.

        Payload :
        {
            "superviseurs_ids": ["<uuid>", ...],
            "hotesses_ids":     ["<uuid>", ...],
            "notify": true
        }
        """
        site = self.get_object()
        serializer = ManageTeamSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        data = serializer.validated_data

        superviseurs = RemoteUser.objects.filter(
            id__in=data['superviseurs_ids'],
            role=RemoteUser.Roles.SUPERVISEUR
        )
        hotesses = RemoteUser.objects.filter(
            id__in=data['hotesses_ids'],
            role=RemoteUser.Roles.HOTESSES
        )

        anciens_superviseurs = set(site.superviseurs.values_list('id', flat=True))
        anciennes_hotesses = set(site.hotesses.values_list('id', flat=True))

        site.superviseurs.set(superviseurs)
        site.hotesses.set(hotesses)

        if data.get('notify', True):
            nouveaux_superviseurs = superviseurs.exclude(id__in=anciens_superviseurs)
            nouvelles_hotesses = hotesses.exclude(id__in=anciennes_hotesses)

            for membre in list(nouveaux_superviseurs) + list(nouvelles_hotesses):
                try:
                    envoyer_email_assignation_campagne(membre, site.campagne, [site])
                except Exception:
                    pass

        return Response(
            {"detail": "Équipe du site mise à jour avec succès."},
            status=status.HTTP_200_OK
        )
