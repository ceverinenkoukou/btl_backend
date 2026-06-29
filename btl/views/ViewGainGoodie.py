from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db import transaction
from django.db.models import Q
from django.utils import timezone

from btl.models import GainGoodie, Goodie, StockGoodieSite, Site, Vente, RemoteUser, Produit, Campagne, Promotion, Degustation, LivraisonGoodiesJour
from btl.permissions import IsPasswordChanged
from btl.serializers.GainGoodieSerializer import GainGoodieSerializer, EnregistrerGainGoodieSerializer
from btl.services.saisie_manuelle import resoudre_hotesse_et_verifier_site


class GainGoodieViewSet(viewsets.ModelViewSet):
    """
    CRUD Gains de goodies.
    - Liste : GET /api/gains-goodies/
    - Création : POST /api/gains-goodies/enregistrer/ (hôtesse uniquement)
    - Détail : GET /api/gains-goodies/{id}/
    
    Lors de l'enregistrement d'un gain :
    - Le stock du goodie est décompté
    - Le stock du produit associé est décompté via une Vente
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]
    serializer_class = GainGoodieSerializer
    
    def get_queryset(self):
        user = self.request.user
        qs = GainGoodie.objects.select_related(
            'goodie',
            'site',
            'site__campagne',
            'site__campagne__entreprise',
            'hotesse',
            'produit_associe',
        ).order_by('-created_at')
        
        if user.role == RemoteUser.Roles.ADMIN:
            return qs
        
        if user.role == RemoteUser.Roles.HOTESSES:
            return qs.filter(
                Q(site__hotesses=user) |
                Q(site__campagne__hotesses=user)
            ).distinct()
        
        if user.role == RemoteUser.Roles.SUPERVISEUR:
            # Voir les gains de ses sites
            return qs.filter(site__superviseurs=user)
        
        if user.role == RemoteUser.Roles.ENTREPRISES:
            # Voir les gains de ses campagnes
            return qs.filter(
                site__campagne__entreprise__user=user
            )
        
        return GainGoodie.objects.none()
    
    @action(detail=False, methods=['post'], url_path='enregistrer')
    def enregistrer(self, request):
        """
        POST /api/gains-goodies/enregistrer/
        
        Enregistre qu'une hôtesse a gagné un goodie via la roue de la fortune.
        Vérifie le stock du jour (LivraisonGoodiesJour) puis décompte automatiquement :
        - Le goodie du stock du jour (via le comptage des GainGoodie du jour)
        - Le goodie du stock général StockGoodieSite
        - Le produit associé via une Vente
        
        Payload:
        {
            "goodie_id": "<uuid>",
            "site_id": "<uuid>",
            "nom_client": "Jean" (optionnel),
            "quantite_produit": 1 (optionnel)
        }
        """
        serializer = EnregistrerGainGoodieSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)

        goodie_id = serializer.validated_data['goodie_id']
        site_id = serializer.validated_data['site_id']
        promotion_id = serializer.validated_data.get('promotion_id')
        degustation_id = serializer.validated_data.get('degustation_id')
        nom_client = serializer.validated_data.get('nom_client', '').strip() or None
        quantite_produit = serializer.validated_data.get('quantite_produit', 1)
        hotesse_id = serializer.validated_data.get('hotesse_id')

        try:
            site = Site.objects.get(id=site_id)
        except Site.DoesNotExist:
            return Response({"detail": "Ce site n'existe pas."}, status=status.HTTP_404_NOT_FOUND)

        # Lève PermissionDenied/ValidationError (gérées automatiquement par
        # DRF) si l'appelant n'a pas le droit de saisir pour ce site/cette
        # hôtesse — volontairement hors du try/except métier ci-dessous.
        hotesse = resoudre_hotesse_et_verifier_site(request.user, site, hotesse_id)

        # Dégustation d'origine (optionnelle), pour traçabilité du gain.
        degustation = None
        if degustation_id:
            degustation = Degustation.objects.filter(id=degustation_id, hotesse=hotesse).first()

        try:
            with transaction.atomic():
                # Récupérer les objets
                goodie = Goodie.objects.get(id=goodie_id)
                promotion = Promotion.objects.get(id=promotion_id) if promotion_id else None
                is_promo_wheel = promotion and promotion.type_promotion in ('TIRAGE', 'GAGNE')

                stock = None
                if not is_promo_wheel:
                    # Vérifier le stock du jour sur ce site (OFFERT uniquement) —
                    # c'est lui qui limite la roue ; sans livraison du jour ou
                    # stock du jour épuisé, on refuse le gain.
                    try:
                        livraison = LivraisonGoodiesJour.objects.get(
                            site=site, goodie=goodie, date=timezone.localdate()
                        )
                    except LivraisonGoodiesJour.DoesNotExist:
                        return Response(
                            {"detail": "Aucun stock de ce goodie livré aujourd'hui sur ce site."},
                            status=status.HTTP_400_BAD_REQUEST
                        )
                    if livraison.restants_du_jour <= 0:
                        return Response(
                            {"detail": "Stock du jour insuffisant pour ce goodie sur ce site."},
                            status=status.HTTP_400_BAD_REQUEST
                        )

                    # Décompte du stock général (cumulé par site)
                    stock = StockGoodieSite.objects.get(
                        goodie=goodie,
                        site=site
                    )
                    if not stock.distribuer(1):
                        return Response(
                            {"detail": "Stock insuffisant pour ce goodie."},
                            status=status.HTTP_400_BAD_REQUEST
                        )
                
                # Créer l'enregistrement du gain
                gain = GainGoodie.objects.create(
                    degustation=degustation,
                    site=site,
                    goodie=goodie,
                    hotesse=hotesse,
                    produit_associe=goodie.produit_associe,
                    quantite_produit=quantite_produit,
                    nom_client=nom_client
                )

                # Créer une Vente pour le produit associé si applicable
                if goodie.produit_associe:
                    vente = Vente.objects.create(
                        hotesse=hotesse,
                        site=site,
                        produit=goodie.produit_associe,
                        conditionnement=Vente.TypeConditionnement.UNITE,
                        quantite=quantite_produit,
                        type_vente=Vente.TypeVente.GRATUIT
                    )
                    
                    # Optionnel: associer la vente au gain pour traçabilité
                    # (vous pouvez ajouter un ForeignKey dans GainGoodie si nécessaire)
                
                serializer = GainGoodieSerializer(gain)
                return Response(
                    {
                        "detail": f"Goodie '{goodie.nom}' remporté avec succès.",
                        "gain": serializer.data,
                        "stock_restant": stock.quantite_restante if stock else None,
                        "produit_associe": {
                            "nom": goodie.produit_associe.nom if goodie.produit_associe else None,
                            "quantite_remise": quantite_produit
                        } if goodie.produit_associe else None
                    },
                    status=status.HTTP_201_CREATED
                )
        
        except Goodie.DoesNotExist:
            return Response(
                {"detail": "Ce goodie n'existe pas."},
                status=status.HTTP_404_NOT_FOUND
            )
        except StockGoodieSite.DoesNotExist:
            return Response(
                {"detail": "Ce goodie n'est pas disponible sur ce site."},
                status=status.HTTP_404_NOT_FOUND
            )
        except Exception as e:
            return Response(
                {"detail": f"Erreur lors de l'enregistrement : {str(e)}"},
                status=status.HTTP_500_INTERNAL_SERVER_ERROR
            )
