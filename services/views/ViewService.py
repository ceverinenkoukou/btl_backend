from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated

from btl.permissions import IsAdmin, IsPasswordChanged
from services.models import Service
from services.serializers import ServiceSerializer


class ServiceViewSet(viewsets.ModelViewSet):
    """
    CRUD des services d'une entreprise (même rôle que ProduitViewSet côté produits).
    - Création/modification/suppression : admin uniquement.
    - Lecture : tous les rôles authentifiés, filtrable par ?entreprise=<id>.
    """
    serializer_class = ServiceSerializer
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action in ('create', 'destroy', 'update', 'partial_update'):
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        qs = Service.objects.select_related('entreprise').all()
        entreprise_id = self.request.query_params.get('entreprise')
        if entreprise_id:
            qs = qs.filter(entreprise_id=entreprise_id)
        return qs
