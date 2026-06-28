from django.db.models import Sum, Count, Q
from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import Vente, RemoteUser, Campagne, Site, Produit
from btl.permissions import IsPasswordChanged
from btl.serializers.VenteSerializer import VenteSerializer, CreerVenteDirecteSerializer
from btl.services.saisie_manuelle import resoudre_hotesse_et_verifier_site


class VenteViewSet(viewsets.ReadOnlyModelViewSet):
    """
    Ventes en lecture seule.
    Créées automatiquement lors d'une dégustation avec a_achete=True.

    Règles d'accès :
    - Hôtesse     : voit uniquement ses propres ventes
    - Superviseur : voit les ventes de ses sites
    - Entreprise  : voit toutes les ventes de ses campagnes
    - Admin       : voit tout
    """
    serializer_class = VenteSerializer
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_queryset(self):
        user = self.request.user

        if user.role == RemoteUser.Roles.ADMIN:
            qs = Vente.objects.all()
        elif user.role == RemoteUser.Roles.HOTESSES:
            qs = Vente.objects.filter(hotesse=user)
        elif user.role == RemoteUser.Roles.SUPERVISEUR:
            qs = Vente.objects.filter(site__in=user.sites_supervises.all())
        elif user.role == RemoteUser.Roles.ENTREPRISES:
            qs = Vente.objects.filter(site__campagne__entreprise__user=user)
        else:
            return Vente.objects.none()

        campagne_id = self.request.query_params.get('campagne')
        if campagne_id:
            qs = qs.filter(site__campagne_id=campagne_id)

        site_id = self.request.query_params.get('site')
        if site_id:
            qs = qs.filter(site_id=site_id)

        return qs

    @action(detail=False, methods=['get'], url_path='stats')
    def stats(self, request):
        """
        GET /api/ventes/stats/
        Statistiques de ventes agrégées pour le contexte de l'utilisateur connecté.
        Prend désormais en compte si la campagne est uniquement en mode Dégustation.
        """
        qs = self.get_queryset()

        campagne_id = request.query_params.get('campagne_id')
        site_id = request.query_params.get('site_id')

        if campagne_id:
            # Sécurité additionnelle : Si la campagne est uniquement DEGUSTATION, pas de statistiques de ventes
            try:
                campagne = Campagne.objects.get(id=campagne_id)
                if campagne.type_campagne == Campagne.TypeCampagne.DEGUSTATION:
                    return Response({
                        'total_ventes': 0,
                        'total_unites_vendues': 0,
                        'ventes_en_pack': 0,
                        'ventes_a_lunite': 0,
                        'message': "Cette campagne est configurée en mode Dégustation uniquement."
                    })
            except Campagne.DoesNotExist:
                pass
            qs = qs.filter(site__campagne__id=campagne_id)
            
        if site_id:
            qs = qs.filter(site__id=site_id)

        # On exclut également globalement les ventes rattachées à des campagnes purement dégustation
        qs = qs.exclude(site__campagne__type_campagne=Campagne.TypeCampagne.DEGUSTATION)

        totaux = qs.aggregate(
            total_ventes=Count('id'),
            total_unites=Sum('quantite'),
            ventes_pack=Count('id', filter=Q(conditionnement=Vente.TypeConditionnement.PACK)),
            ventes_unite=Count('id', filter=Q(conditionnement=Vente.TypeConditionnement.UNITE)),
        )

        return Response({
            'total_ventes': totaux['total_ventes'] or 0,
            'total_unites_vendues': totaux['total_unites'] or 0,
            'ventes_en_pack': totaux['ventes_pack'] or 0,
            'ventes_a_lunite': totaux['ventes_unite'] or 0,
        })

    @action(detail=False, methods=['post'], url_path='creer-directe')
    def creer_directe(self, request):
        """
        POST /api/ventes/creer-directe/
        Crée une vente directe (sans dégustation, sans promo), réservée aux
        campagnes de type VENTE sans mécanique promotionnelle. Pour une
        campagne VENTE avec promo, utiliser POST /promotions/{id}/enregistrer-gain/.
        """
        serializer = CreerVenteDirecteSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        data = serializer.validated_data

        site = Site.objects.get(id=data['site_id'])
        produit = Produit.objects.get(id=data['produit_id'])

        # Lève PermissionDenied/ValidationError (gérées automatiquement par
        # DRF) si l'appelant n'a pas le droit de saisir pour ce site/cette
        # hôtesse. Pour une hôtesse, hotesse == request.user (hotesse_id ignoré).
        hotesse = resoudre_hotesse_et_verifier_site(request.user, site, data.get('hotesse_id'))

        vente = Vente.objects.create(
            hotesse=hotesse,
            site=site,
            produit=produit,
            conditionnement=data['conditionnement'],
            quantite=data['quantite'],
            type_vente=Vente.TypeVente.NORMAL,
            nom_client=data.get('nom_client', '').strip() or None,
        )

        return Response(VenteSerializer(vente).data, status=status.HTTP_201_CREATED)