from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated

from btl.permissions import IsAdmin, IsPasswordChanged
from services.models import ObjectifCampagneService
from services.serializers import ObjectifCampagneServiceSerializer


class ObjectifCampagneServiceViewSet(viewsets.ModelViewSet):
    """
    CRUD des objectifs (libres) d'une campagne service.
    - Création/modification/suppression : admin uniquement.
    - Lecture : tous les rôles authentifiés, filtrable par ?campagne_service=<id>.
    """
    serializer_class = ObjectifCampagneServiceSerializer
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action in ('create', 'destroy', 'update', 'partial_update'):
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        qs = ObjectifCampagneService.objects.select_related('campagne_service', 'site').all()
        campagne_service_id = self.request.query_params.get('campagne_service')
        if campagne_service_id:
            qs = qs.filter(campagne_service_id=campagne_service_id)
        return qs
