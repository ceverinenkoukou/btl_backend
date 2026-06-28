from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated

from btl.permissions import IsAdmin, IsPasswordChanged
from services.models import RecompenseService
from services.serializers import RecompenseServiceSerializer


class RecompenseServiceViewSet(viewsets.ModelViewSet):
    """
    CRUD des lots à gagner pour une campagne service.
    - Création/modification/suppression : admin uniquement.
    - Lecture : tous les rôles authentifiés, filtrable par ?campagne_service=<id>.
    """
    serializer_class = RecompenseServiceSerializer
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action in ('create', 'destroy', 'update', 'partial_update'):
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        qs = RecompenseService.objects.select_related('campagne_service').all()
        campagne_service_id = self.request.query_params.get('campagne_service')
        if campagne_service_id:
            qs = qs.filter(campagne_service_id=campagne_service_id)
        return qs
