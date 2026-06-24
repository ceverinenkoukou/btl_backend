from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated

from btl.models import GainPromotion, RemoteUser
from btl.permissions import IsPasswordChanged
from btl.serializers import GainPromotionSerializer


class GainPromotionViewSet(viewsets.ReadOnlyModelViewSet):
    """
    Liste en lecture seule des gains promotionnels.
    Filtrable par ?campagne=<id> et/ou ?site=<id>.
    """
    serializer_class = GainPromotionSerializer
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_queryset(self):
        qs = GainPromotion.objects.select_related(
            'promotion', 'hotesse', 'site', 'campagne'
        ).order_by('-created_at')

        user = self.request.user
        if user.role == RemoteUser.Roles.HOTESSES:
            qs = qs.filter(hotesse=user)
        elif user.role == RemoteUser.Roles.SUPERVISEUR:
            qs = qs.filter(site__superviseurs=user)
        elif user.role == RemoteUser.Roles.ENTREPRISES:
            qs = qs.filter(site__campagne__entreprise__user=user)
        elif user.role != RemoteUser.Roles.ADMIN:
            qs = qs.none()

        campagne_id = self.request.query_params.get('campagne')
        if campagne_id:
            qs = qs.filter(campagne_id=campagne_id)

        site_id = self.request.query_params.get('site')
        if site_id:
            qs = qs.filter(site_id=site_id)

        return qs
