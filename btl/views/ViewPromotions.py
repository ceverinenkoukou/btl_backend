from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated

from btl.models import Promotion
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers import PromotionSerializer


class PromotionViewSet(viewsets.ModelViewSet):
    """
    CRUD promotions d'une campagne.
    - Création/modification/suppression : admin uniquement.
    - Lecture : filtrée par campagne si query param ?campagne=<id>.
    """
    serializer_class = PromotionSerializer

    def get_permissions(self):
        if self.action in ('create', 'update', 'partial_update', 'destroy'):
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        qs = Promotion.objects.select_related('campagne').order_by('created_at')
        campagne_id = self.request.query_params.get('campagne')
        if campagne_id:
            qs = qs.filter(campagne_id=campagne_id)
        return qs
