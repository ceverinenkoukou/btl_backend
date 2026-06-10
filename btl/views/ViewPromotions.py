from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import Promotion, GainPromotion, Site
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers import PromotionSerializer


class PromotionViewSet(viewsets.ModelViewSet):
    """
    CRUD promotions d'une campagne.
    - Création/modification/suppression : admin uniquement.
    - Lecture : filtrée par campagne si query param ?campagne=<id>.
    - enregistrer-gain : hôtesse déclenchant une règle promo.
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

    @action(detail=True, methods=['post'], url_path='enregistrer-gain')
    def enregistrer_gain(self, request, pk=None):
        """
        POST /api/promotions/{id}/enregistrer-gain/
        Enregistre qu'une hôtesse a déclenché cette règle pour un client.

        Payload :
        {
            "site_id":    "<uuid>",
            "nom_client": "Jean",           (optionnel)
            "tranche_age": "26_35"          (optionnel)
        }
        """
        promotion = self.get_object()
        user = request.user

        # Vérification rôle
        if user.role != 'Hotesse':
            return Response(
                {"detail": "Seules les hôtesses peuvent enregistrer un gain."},
                status=status.HTTP_403_FORBIDDEN
            )

        site_id = request.data.get('site_id')
        if not site_id:
            return Response(
                {"detail": "Le champ site_id est requis."},
                status=status.HTTP_400_BAD_REQUEST
            )

        try:
            site = Site.objects.get(id=site_id)
        except Site.DoesNotExist:
            return Response(
                {"detail": "Site introuvable."},
                status=status.HTTP_404_NOT_FOUND
            )

        if not promotion.is_active:
            return Response(
                {"detail": "Cette règle promotionnelle n'est plus active."},
                status=status.HTTP_400_BAD_REQUEST
            )

        gain = GainPromotion.objects.create(
            promotion=promotion,
            hotesse=user,
            site=site,
            campagne=promotion.campagne,
            quantite_produits_concernes=promotion.quantite_requise,
            nom_client=request.data.get('nom_client', '').strip() or None,
            tranche_age=request.data.get('tranche_age') or None,
        )

        return Response({
            "detail": "Gain enregistré avec succès.",
            "gain_id": str(gain.id),
            "recompense": promotion.recompense_description,
            "quantite_produits_concernes": gain.quantite_produits_concernes,
        }, status=status.HTTP_201_CREATED)