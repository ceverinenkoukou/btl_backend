from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from django.db.models import Q

from btl.models import RemoteUser
from btl.permissions import IsAdmin, IsPasswordChanged
from services.models import CampagneService
from services.serializers import (
    CampagneServiceListSerializer,
    CampagneServiceDetailSerializer,
    CampagneServiceWriteSerializer,
)


class CampagneServiceViewSet(viewsets.ModelViewSet):
    """
    CRUD campagnes service.
    - Création/modification/suppression : admin uniquement.
    - Lecture : filtrée par rôle (même logique que CampagneViewSet côté produits).
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action in ('create', 'destroy', 'update', 'partial_update'):
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_serializer_class(self):
        if self.action in ('create', 'update', 'partial_update'):
            return CampagneServiceWriteSerializer
        if self.action == 'list':
            return CampagneServiceListSerializer
        return CampagneServiceDetailSerializer

    def get_queryset(self):
        user = self.request.user

        if user.role == RemoteUser.Roles.ADMIN:
            return CampagneService.objects.all()

        if user.role == RemoteUser.Roles.ENTREPRISES:
            return CampagneService.objects.filter(entreprise__user=user)

        if user.role == RemoteUser.Roles.SUPERVISEUR:
            return CampagneService.objects.filter(
                Q(superviseurs=user) | Q(sites__superviseurs=user)
            ).distinct()

        if user.role == RemoteUser.Roles.HOTESSES:
            return CampagneService.objects.filter(
                Q(hotesses=user) | Q(sites__hotesses=user)
            ).distinct()

        return CampagneService.objects.none()
