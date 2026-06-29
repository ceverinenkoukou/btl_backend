from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db import transaction
from django.utils import timezone

from btl.models import Promotion, GainPromotion, Site, Vente, Produit, Degustation, LivraisonGoodiesJour
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers import PromotionSerializer
from btl.services.saisie_manuelle import resoudre_hotesse_et_verifier_site


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

        # Lève PermissionDenied/ValidationError (gérées automatiquement par
        # DRF) si l'appelant n'a pas le droit de saisir pour ce site/cette
        # hôtesse. Pour une hôtesse, hotesse == user (hotesse_id ignoré).
        hotesse = resoudre_hotesse_et_verifier_site(user, site, request.data.get('hotesse_id'))

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

        if promotion.sites.exists() and not promotion.sites.filter(id=site.id).exists():
            return Response(
                {"detail": "Cette offre n'est pas disponible sur ce site."},
                status=status.HTTP_400_BAD_REQUEST
            )

        nom_client = request.data.get('nom_client', '').strip() or None

        # Dégustation d'origine (optionnelle) : si fournie, la vente NORMAL
        # créée ci-dessous lui est rattachée, pour que a_achete=True soit
        # toujours traçable jusqu'à une Vente concrète.
        degustation = None
        degustation_id = request.data.get('degustation_id')
        if degustation_id:
            degustation = Degustation.objects.filter(id=degustation_id, hotesse=hotesse).first()

        with transaction.atomic():
            gain = GainPromotion.objects.create(
                promotion=promotion,
                hotesse=hotesse,
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
                    degustation=degustation,
                    hotesse=hotesse,
                    site=site,
                    produit=produit,
                    conditionnement=promotion.conditionnement,
                    quantite=promotion.quantite_requise,
                    type_vente=Vente.TypeVente.NORMAL,
                    nom_client=nom_client,
                )
                ventes_creees.append({
                    "type": "achat",
                    "vente_id": str(vente_achat.id),
                    "quantite": promotion.quantite_requise,
                })
                # Relie le gain à l'achat qui l'a déclenché, pour que les
                # rapports puissent afficher une seule ligne (achat + offre)
                # au lieu de deux enregistrements sans lien.
                gain.vente_achat = vente_achat
                gain.save(update_fields=['vente_achat'])

                # 2. Vente PROMOTION : le produit offert (si type OFFERT uniquement)
                # TIRAGE ne génère pas de vente produit — la récompense passe par la roue
                if promotion.type_promotion == Promotion.TypePromotion.OFFERT:
                    vente_offerte = Vente.objects.create(
                        hotesse=hotesse,
                        site=site,
                        produit=produit,
                        conditionnement=promotion.conditionnement,
                        quantite=promotion.quantite_offerte,
                        type_vente=Vente.TypeVente.PROMOTION,
                        nom_client=nom_client,
                    )
                    ventes_creees.append({
                        "type": "offert",
                        "vente_id": str(vente_offerte.id),
                        "quantite": promotion.quantite_offerte,
                    })

        # Préparer les données de tirage si applicable — seuls les goodies
        # avec un stock du jour disponible sur ce site apparaissent sur la
        # roue (même règle que pour la roue "Goodies" classique).
        tirage_disponible = promotion.type_promotion == Promotion.TypePromotion.TIRAGE
        goodies_roue = []
        if tirage_disponible:
            restants_par_goodie = {
                livraison.goodie_id: livraison.restants_du_jour
                for livraison in LivraisonGoodiesJour.objects.filter(
                    site=site, date=timezone.localdate()
                )
            }
            goodies_roue = [
                {"id": str(g.id), "nom": g.nom}
                for g in promotion.goodies.all()
                if restants_par_goodie.get(g.id, 0) > 0
            ]

        return Response({
            "detail": "Gain enregistré avec succès.",
            "gain_id": str(gain.id),
            "recompense": promotion.recompense_description,
            "quantite_produits_concernes": gain.quantite_produits_concernes,
            "ventes": ventes_creees,
            "tirage_disponible": tirage_disponible,
            "goodies_roue": goodies_roue,
        }, status=status.HTTP_201_CREATED)
