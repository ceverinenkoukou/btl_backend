from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db import transaction

from btl.models import GainGoodie, Goodie, StockGoodieSite, Site, Vente, RemoteUser, Produit, Campagne
from btl.permissions import IsPasswordChanged
from btl.serializers.GainGoodieSerializer import GainGoodieSerializer, EnregistrerGainGoodieSerializer


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
        
        if user.role == RemoteUser.Roles.ADMIN:
            return GainGoodie.objects.all()
        
        if user.role == RemoteUser.Roles.HOTESSES:
            # Voir les gains des sites auxquels l'hôtesse est assignée
            return GainGoodie.objects.filter(site__hotesses=user)
        
        if user.role == RemoteUser.Roles.SUPERVISEUR:
            # Voir les gains de ses sites
            return GainGoodie.objects.filter(
                site__superviseurs=user
            )
        
        if user.role == RemoteUser.Roles.ENTREPRISES:
            # Voir les gains de ses campagnes
            return GainGoodie.objects.filter(
                site__campagne__entreprise__user=user
            )
        
        return GainGoodie.objects.none()
    
    @action(detail=False, methods=['post'], url_path='enregistrer')
    def enregistrer(self, request):
        """
        POST /api/gains-goodies/enregistrer/
        
        Enregistre qu'une hôtesse a gagné un goodie via la roue de la fortune.
        Décompte automatiquement :
        - Le goodie du stock StockGoodieSite
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
        nom_client = serializer.validated_data.get('nom_client', '').strip() or None
        quantite_produit = serializer.validated_data.get('quantite_produit', 1)
        
        try:
            with transaction.atomic():
                # Récupérer les objets
                goodie = Goodie.objects.get(id=goodie_id)
                site = Site.objects.get(id=site_id)
                
                # Vérifier et décompter le stock du goodie
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
                    site=site,
                    goodie=goodie,
                    produit_associe=goodie.produit_associe,
                    quantite_produit=quantite_produit,
                    nom_client=nom_client
                )
                
                # Créer une Vente pour le produit associé si applicable
                if goodie.produit_associe:
                    vente = Vente.objects.create(
                        hotesse=request.user,
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
                        "stock_restant": stock.quantite_restante,
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
        except Site.DoesNotExist:
            return Response(
                {"detail": "Ce site n'existe pas."},
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
