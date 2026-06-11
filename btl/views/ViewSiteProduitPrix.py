from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated

from btl.models import SiteProduitPrix, RemoteUser
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers import SiteProduitPrixSerializer


class SiteProduitPrixViewSet(viewsets.ModelViewSet):
    """
    CRUD prix par site/produit.
    - Écriture : admin uniquement.
    - Lecture : filtrée par rôle.
    Filtres GET : ?site=<id>  ?produit=<id>
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]
    serializer_class = SiteProduitPrixSerializer

    def get_permissions(self):
        if self.action in ('create', 'update', 'partial_update', 'destroy'):
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        user = self.request.user
        qs = SiteProduitPrix.objects.select_related('site', 'produit')

        if user.role == RemoteUser.Roles.SUPERVISEUR:
            qs = qs.filter(site__superviseurs=user)
        elif user.role == RemoteUser.Roles.HOTESSES:
            qs = qs.filter(site__hotesses=user)
        elif user.role == RemoteUser.Roles.ENTREPRISES:
            qs = qs.filter(site__campagne__entreprise__user=user)
        elif user.role != RemoteUser.Roles.ADMIN:
            return SiteProduitPrix.objects.none()

        site_id = self.request.query_params.get('site')
        produit_id = self.request.query_params.get('produit')
        if site_id:
            qs = qs.filter(site_id=site_id)
        if produit_id:
            qs = qs.filter(produit_id=produit_id)
        return qs
