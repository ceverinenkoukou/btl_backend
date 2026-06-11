from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db import transaction

from btl.models import Promotion, GainPromotion, Site, Vente, Produit
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

        Crée automatiquement les Ventes associées :
        - 1 Vente NORMAL pour les quantite_requise produits achetés
        - 1 Vente PROMOTION pour le produit offert (si type_promotion=OFFERT)
        Ces ventes sont déduites de l'objectif de ventes de la campagne.

        Payload :
        {
            "site_id":    "<uuid>",
            "produit_id": "<uuid>",
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
        produit_id = request.data.get('produit_id')
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

        # Récupérer le produit (obligatoire pour créer les ventes)
        produit = None
        if produit_id:
            try:
                produit = Produit.objects.get(id=produit_id)
            except Produit.DoesNotExist:
                return Response(
                    {"detail": "Produit introuvable."},
                    status=status.HTTP_404_NOT_FOUND
                )

        if not promotion.is_active:
            return Response(
                {"detail": "Cette règle promotionnelle n'est plus active."},
                status=status.HTTP_400_BAD_REQUEST
            )

        nom_client = request.data.get('nom_client', '').strip() or None

        with transaction.atomic():
            gain = GainPromotion.objects.create(
                promotion=promotion,
                hotesse=user,
                site=site,
                campagne=promotion.campagne,
                quantite_produits_concernes=promotion.quantite_requise,
                nom_client=nom_client,
                tranche_age=request.data.get('tranche_age') or None,
            )

            ventes_creees = []

            if produit:
                # 1. Vente NORMAL : les produits achetés par le client (quantite_requise)
                vente_achat = Vente.objects.create(
                    hotesse=user,
                    site=site,
                    produit=produit,
                    conditionnement=Vente.TypeConditionnement.UNITE,
                    quantite=promotion.quantite_requise,
                    type_vente=Vente.TypeVente.NORMAL,
                    nom_client=nom_client,
                )
                ventes_creees.append({
                    "type": "achat",
                    "vente_id": str(vente_achat.id),
                    "quantite": promotion.quantite_requise,
                })

                # 2. Vente PROMOTION : le produit offert (si type OFFERT)
                if promotion.type_promotion == Promotion.TypePromotion.OFFERT:
                    vente_offerte = Vente.objects.create(
                        hotesse=user,
                        site=site,
                        produit=produit,
                        conditionnement=Vente.TypeConditionnement.UNITE,
                        quantite=1,
                        type_vente=Vente.TypeVente.PROMOTION,
                        nom_client=nom_client,
                    )
                    ventes_creees.append({
                        "type": "offert",
                        "vente_id": str(vente_offerte.id),
                        "quantite": 1,
                    })

        return Response({
            "detail": "Gain enregistré avec succès.",
            "gain_id": str(gain.id),
            "recompense": promotion.recompense_description,
            "quantite_produits_concernes": gain.quantite_produits_concernes,
            "ventes": ventes_creees,
        }, status=status.HTTP_201_CREATED)