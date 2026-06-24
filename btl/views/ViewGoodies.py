from django.db.models import Sum, Q
from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import Goodie, StockGoodieSite, RemoteUser, Campagne
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers import (
    GoodieSerializer,
    GoodieDetailSerializer,
    GoodieCreateSerializer,
    GoodieUpdateSerializer,
    AllouerGoodieSerializer,
)


class GoodieViewSet(viewsets.ModelViewSet):
    """
    CRUD Goodies (cadeaux pour la roue de la fortune).

    - Liste : GET /api/goodies/?campagne=<id>
    - Détail : GET /api/goodies/{id}/
    - Création : POST /api/goodies/ (admin uniquement)
    - Modification : PATCH /api/goodies/{id}/ (admin uniquement)
    - Suppression : DELETE /api/goodies/{id}/ (admin uniquement)
    - Allocation : POST /api/goodies/{id}/allouer/ (admin uniquement)

    Filtres :
    - ?campagne=<id> : filtre par campagne
    """

    def get_permissions(self):
        if self.action in ('create', 'update', 'partial_update', 'destroy', 'allouer'):
            return [IsAuthenticated(), IsAdmin(), IsPasswordChanged()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_serializer_class(self):
        if self.action == 'create':
            return GoodieCreateSerializer
        if self.action in ('update', 'partial_update'):
            return GoodieUpdateSerializer
        if self.action == 'retrieve':
            return GoodieDetailSerializer
        if self.action == 'allouer':
            return AllouerGoodieSerializer
        return GoodieSerializer

    def get_queryset(self):
        user = self.request.user
        qs = Goodie.objects.select_related('entreprise', 'campagne').prefetch_related('stocks_sites', 'stocks_sites__site')

        # Filtrage par rôle
        if user.role == RemoteUser.Roles.ADMIN:
            pass  # Voir tout
        elif user.role == RemoteUser.Roles.ENTREPRISES:
            qs = qs.filter(entreprise__user=user)
        elif user.role == RemoteUser.Roles.SUPERVISEUR:
            # Voir les goodies des campagnes supervisées, au niveau campagne OU site
            # (un superviseur affecté seulement à un site doit aussi voir les goodies)
            qs = qs.filter(
                Q(campagne__superviseurs=user) | Q(campagne__sites__superviseurs=user)
            ).distinct()
        elif user.role == RemoteUser.Roles.HOTESSES:
            # Voir les goodies des campagnes assignées, au niveau campagne OU site
            # (une hôtesse affectée seulement à un site doit aussi voir les goodies,
            # sinon la roue de la fortune lui apparaît vide)
            qs = qs.filter(
                Q(campagne__hotesses=user) | Q(campagne__sites__hotesses=user)
            ).distinct()
        else:
            qs = qs.none()

        # Filtre par campagne via query param
        campagne_id = self.request.query_params.get('campagne')
        if campagne_id:
            qs = qs.filter(campagne_id=campagne_id)

        return qs.order_by('-created_at')

    @action(detail=True, methods=['post'], url_path='allouer')
    def allouer(self, request, pk=None):
        """
        POST /api/goodies/{id}/allouer/
        Alloue une quantité de goodies à un site.

        Payload:
        {
            "site_id": "<uuid>",
            "quantite": 50
        }
        """
        goodie = self.get_object()
        serializer = self.get_serializer(data=request.data, context={'goodie': goodie})
        serializer.is_valid(raise_exception=True)

        site = serializer.validated_data['site_id']
        quantite = serializer.validated_data['quantite']

        # Vérifier si un stock existe déjà pour ce site/goodie
        stock, created = StockGoodieSite.objects.get_or_create(
            site=site,
            goodie=goodie,
            defaults={
                'quantite_initiale': quantite,
                'quantite_restante': quantite
            }
        )

        if not created:
            # Augmenter le stock existant
            stock.quantite_initiale += quantite
            stock.quantite_restante += quantite
            stock.save()

        return Response({
            'detail': f'{quantite} unités de "{goodie.nom}" allouées au site "{site.nom}".',
            'site_id': str(site.id),
            'site_nom': site.nom,
            'quantite_allouee': stock.quantite_initiale,
            'quantite_restante': stock.quantite_restante,
        }, status=status.HTTP_200_OK)
