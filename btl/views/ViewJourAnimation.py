from django.db.models import Q
from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated

from btl.models import JourAnimation, RemoteUser
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers.JourAnimationSerializer import JourAnimationSerializer


class JourAnimationViewSet(viewsets.ModelViewSet):
    """
    CRUD jours animés et horaires de site.

    - Liste  : GET /api/jours-animation/?campagne=<id>[&site=<id>]
    - Détail : GET /api/jours-animation/{id}/
    - Créer  : POST /api/jours-animation/        (admin uniquement)
    - Modifier: PATCH /api/jours-animation/{id}/ (admin uniquement)
    - Supprimer: DELETE /api/jours-animation/{id}/ (admin uniquement)
    """
    serializer_class = JourAnimationSerializer

    def get_permissions(self):
        if self.action in ('create', 'update', 'partial_update', 'destroy'):
            return [IsAuthenticated(), IsAdmin(), IsPasswordChanged()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        user = self.request.user
        qs = JourAnimation.objects.select_related('campagne', 'site')

        if user.role == RemoteUser.Roles.ADMIN:
            pass
        elif user.role == RemoteUser.Roles.ENTREPRISES:
            qs = qs.filter(campagne__entreprise__user=user)
        elif user.role == RemoteUser.Roles.SUPERVISEUR:
            qs = qs.filter(
                Q(campagne__superviseurs=user) | Q(campagne__sites__superviseurs=user)
            ).distinct()
        elif user.role == RemoteUser.Roles.HOTESSES:
            qs = qs.filter(
                Q(campagne__hotesses=user) | Q(campagne__sites__hotesses=user)
            ).distinct()
        else:
            return JourAnimation.objects.none()

        campagne_id = self.request.query_params.get('campagne')
        if campagne_id:
            qs = qs.filter(campagne_id=campagne_id)

        site_id = self.request.query_params.get('site')
        if site_id:
            qs = qs.filter(site_id=site_id)

        return qs
