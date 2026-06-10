from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import Produit, RemoteUser
from btl.permissions import IsAdmin, IsSuperviseurOrAdmin, IsPasswordChanged
from btl.serializers import ProduitSerializer


class ProduitViewSet(viewsets.ModelViewSet):
    """
    CRUD Produits.

    - Liste : GET /api/produits/?entreprise=<id>
    - Détail : GET /api/produits/{id}/
    - Création : POST /api/produits/ (admin uniquement)
    - Modification : PATCH /api/produits/{id}/ (admin uniquement)
    - Suppression : DELETE /api/produits/{id}/ (admin uniquement)

    Filtres :
    - ?entreprise=<id> : filtre par entreprise
    """

    serializer_class = ProduitSerializer

    def get_permissions(self):
        if self.action in ('create', 'update', 'partial_update', 'destroy'):
            return [IsAuthenticated(), IsAdmin(), IsPasswordChanged()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        user = self.request.user

        if user.role == RemoteUser.Roles.ADMIN:
            return Produit.objects.all()

        if user.role == RemoteUser.Roles.ENTREPRISES:
            return Produit.objects.filter(entreprise__user=user)

        if user.role == RemoteUser.Roles.SUPERVISEUR:
            # Les superviseurs voient les produits des campagnes qu'ils supervisent
            from btl.models import Campagne
            campagnes = Campagne.objects.filter(superviseurs=user)
            entreprises = campagnes.values_list('entreprise', flat=True).distinct()
            return Produit.objects.filter(entreprise__in=entreprises)

        if user.role == RemoteUser.Roles.HOTESSES:
            # Les hôtesses voient les produits des campagnes où elles sont assignées
            from btl.models import Campagne
            campagnes = Campagne.objects.filter(hotesse=user)
            entreprises = campagnes.values_list('entreprise', flat=True).distinct()
            return Produit.objects.filter(entreprise__in=entreprises)

        return Produit.objects.none()

    def list(self, request, *args, **kwargs):
        queryset = self.get_queryset()

        # Filtre par entreprise (optionnel)
        entreprise_id = request.query_params.get('entreprise')
        if entreprise_id:
            queryset = queryset.filter(entreprise_id=entreprise_id)

        # Filtre par campagne (optionnel) - nécessite une jointure via les sites/produits disponibles
        campagne_id = request.query_params.get('campagne')
        if campagne_id:
            from btl.models import Campagne
            try:
                campagne = Campagne.objects.get(id=campagne_id)
                produits_ids = campagne.get_produits_disponibles().values_list('id', flat=True)
                queryset = queryset.filter(id__in=produits_ids)
            except Campagne.DoesNotExist:
                pass

        serializer = self.get_serializer(queryset, many=True)
        return Response(serializer.data)
