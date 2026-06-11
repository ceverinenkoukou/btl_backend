from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from django.db.models import Q

from btl.models import ObjectifSite, RemoteUser
from btl.permissions import IsAdmin, IsAdminOrReadOnly, IsPasswordChanged
from btl.serializers import ObjectifSiteSerializer, ObjectifSiteWriteSerializer


class ObjectifSiteViewSet(viewsets.ModelViewSet):
    """
    CRUD objectifs par hôtesse / site.
    - Écriture : admin uniquement.
    - Lecture : filtrée par rôle.
    Filtres GET : ?site=<id>  ?hotesse=<id>  ?date=YYYY-MM-DD
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action in ('create', 'update', 'partial_update', 'destroy'):
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_serializer_class(self):
        if self.action in ('create', 'update', 'partial_update'):
            return ObjectifSiteWriteSerializer
        return ObjectifSiteSerializer

    def get_queryset(self):
        user = self.request.user
        qs = ObjectifSite.objects.select_related('site', 'hotesse')

        if user.role == RemoteUser.Roles.HOTESSES:
            qs = qs.filter(hotesse=user)
        elif user.role == RemoteUser.Roles.SUPERVISEUR:
            qs = qs.filter(site__superviseurs=user)
        elif user.role == RemoteUser.Roles.ENTREPRISES:
            qs = qs.filter(site__campagne__entreprise__user=user)
        elif user.role != RemoteUser.Roles.ADMIN:
            return ObjectifSite.objects.none()

        site_id = self.request.query_params.get('site')
        hotesse_id = self.request.query_params.get('hotesse')
        date = self.request.query_params.get('date')
        if site_id:
            qs = qs.filter(site_id=site_id)
        if hotesse_id:
            qs = qs.filter(hotesse_id=hotesse_id)
        if date:
            qs = qs.filter(date=date)
        return qs
