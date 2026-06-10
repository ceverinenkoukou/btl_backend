from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import Degustation, Site, RemoteUser, Campagne
from btl.permissions import IsPasswordChanged
from btl.serializers.DegustationSerializer import DegustationSerializer
from btl.serializers.PromotionSerializer import PromotionSerializer


class DegustationViewSet(viewsets.ModelViewSet):
    """
    Gestion des dégustations.

    Règles d'accès :
    - Hôtesse     : voit et crée uniquement ses propres dégustations
    - Superviseur : voit toutes les dégustations des sites qu'il supervise
    - Entreprise  : voit toutes les dégustations de ses campagnes
    - Admin       : voit tout

    La création est réservée aux hôtesses ; la suppression à l'admin.
    """
    serializer_class = DegustationSerializer
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action == 'destroy':
            from btl.permissions import IsAdmin
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        user = self.request.user

        if user.role == RemoteUser.Roles.ADMIN:
            return Degustation.objects.all()

        if user.role == RemoteUser.Roles.HOTESSES:
            return Degustation.objects.filter(hotesse=user)

        if user.role == RemoteUser.Roles.SUPERVISEUR:
            return Degustation.objects.filter(
                site__in=user.sites_supervises.all()
            )

        if user.role == RemoteUser.Roles.ENTREPRISES:
            return Degustation.objects.filter(
                campagne__entreprise__user=user
            )

        return Degustation.objects.none()

    def create(self, request, *args, **kwargs):
        if request.user.role != RemoteUser.Roles.HOTESSES:
            return Response(
                {"detail": "Seules les hôtesses peuvent saisir des dégustations."},
                status=status.HTTP_403_FORBIDDEN
            )
        return super().create(request, *args, **kwargs)

    @action(detail=False, methods=['get'], url_path='mon-site')
    def mon_site(self, request):
        """
        GET /api/degustations/mon-site/?site_id=<uuid>
        Renvoie à l'hôtesse les infos nécessaires pour sa saisie :
        - produits de l'entreprise de la campagne (auto-sélectionné si un seul)
        - goodies disponibles sur le site
        """
        site_id = request.query_params.get('site_id')
        if not site_id:
            return Response(
                {"detail": "Paramètre site_id requis."},
                status=status.HTTP_400_BAD_REQUEST
            )

        try:
            site = Site.objects.get(pk=site_id, hotesses=request.user)
        except Site.DoesNotExist:
            return Response(
                {"detail": "Site introuvable ou non assigné."},
                status=status.HTTP_404_NOT_FOUND
            )

        produits = site.campagne.get_produits_disponibles()

        produits_data = [
            {
                'id': str(p.id),
                'nom': p.nom,
                'prix_indicatif': str(p.prix_indicatif) if p.prix_indicatif else None
            }
            for p in produits
        ]
        goodies_data = [
            {
                'id': str(stock.goodie.id),
                'nom': stock.goodie.nom,
                'quantite_restante': stock.quantite_restante
            }
            for stock in site.stocks_goodies.filter(quantite_restante__gt=0)
        ]

        # Récupérer les promotions actives de la campagne si type_recompense = PROMOTIONS
        promotions_data = []
        if site.campagne.type_recompense == Campagne.TypeRecompense.PROMOTIONS:
            promotions = site.campagne.promotions.filter(is_active=True).order_by('quantite_requise')
            promotions_data = [
                {
                    'id': str(p.id),
                    'type_promotion': p.type_promotion,
                    'type_promotion_display': p.get_type_promotion_display(),
                    'quantite_requise': p.quantite_requise,
                    'recompense_description': p.recompense_description,
                }
                for p in promotions
            ]

        return Response({
            'site_id': str(site.id),
            'site_nom': site.nom,
            'campagne_id': str(site.campagne.id),
            'campagne_nom': site.campagne.nom,
            'entreprise_nom': site.campagne.entreprise.nom_commercial,
            'type_recompense': site.campagne.type_recompense,
            'type_recompense_display': site.campagne.get_type_recompense_display(),
            'produits': produits_data,
            'auto_select_produit': len(produits_data) == 1,
            'goodies_disponibles': goodies_data,
            'promotions': promotions_data,
        })
