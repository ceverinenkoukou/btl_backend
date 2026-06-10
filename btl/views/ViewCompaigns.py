from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db.models import Q, Count, Sum, F

from btl.models import Campagne, RemoteUser, Site, Degustation, Vente, GainPromotion, Promotion
from btl.permissions import IsAdmin, IsAdminOrReadOnly, IsPasswordChanged
from btl.serializers import (
    CampagneListSerializer, CampagneDetailSerializer, CampagneWriteSerializer,
    GoodieSerializer
)
from btl.serializers.CampagneSerializer import ManageTeamSerializer
from btl.services.email_service import envoyer_email_assignation_campagne


class CampagneViewSet(viewsets.ModelViewSet):
    """
    CRUD campagnes.
    - Création/modification/suppression : admin uniquement.
    - Lecture : filtrée par rôle.
    - manage-team : assigne l'équipe et notifie par email.
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action in ('create', 'destroy', 'update', 'partial_update'):
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_serializer_class(self):
        if self.action in ('create', 'update', 'partial_update'):
            return CampagneWriteSerializer
        if self.action == 'list':
            return CampagneListSerializer
        return CampagneDetailSerializer

    def get_queryset(self):
        user = self.request.user

        if user.role == RemoteUser.Roles.ADMIN:
            return Campagne.objects.all()

        if user.role == RemoteUser.Roles.ENTREPRISES:
            return Campagne.objects.filter(entreprise__user=user)

        if user.role == RemoteUser.Roles.SUPERVISEUR:
            return Campagne.objects.filter(
                Q(superviseurs=user) | Q(sites__superviseurs=user)
            ).distinct()

        if user.role == RemoteUser.Roles.HOTESSES:
            return Campagne.objects.filter(
                Q(hotesses=user) | Q(sites__hotesses=user)
            ).distinct()

        return Campagne.objects.none()

    @action(detail=True, methods=['post'], url_path='manage-team',
            permission_classes=[IsAuthenticated, IsAdmin])
    def manage_team(self, request, pk=None):
        """
        POST /api/campagnes/{id}/manage-team/
        Assigne (ou remplace) l'équipe d'une campagne.
        Envoie un email à chaque nouveau membre si notify=True.

        Payload :
        {
            "superviseurs_ids": ["<uuid>", ...],
            "hotesses_ids":     ["<uuid>", ...],
            "notify": true
        }
        """
        campagne = self.get_object()
        serializer = ManageTeamSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        data = serializer.validated_data

        superviseurs = RemoteUser.objects.filter(
            id__in=data['superviseurs_ids'],
            role=RemoteUser.Roles.SUPERVISEUR
        )
        hotesses = RemoteUser.objects.filter(
            id__in=data['hotesses_ids'],
            role=RemoteUser.Roles.HOTESSES
        )

        anciens_superviseurs = set(campagne.superviseurs.values_list('id', flat=True))
        anciennes_hotesses = set(campagne.hotesses.values_list('id', flat=True))

        campagne.superviseurs.set(superviseurs)
        campagne.hotesses.set(hotesses)

        if data.get('notify', True):
            nouveaux_superviseurs = superviseurs.exclude(id__in=anciens_superviseurs)
            nouvelles_hotesses = hotesses.exclude(id__in=anciennes_hotesses)

            for membre in list(nouveaux_superviseurs) + list(nouvelles_hotesses):
                sites_membre = Site.objects.filter(campagne=campagne).filter(
                    superviseurs=membre
                ) | Site.objects.filter(campagne=campagne).filter(hotesses=membre)
                try:
                    envoyer_email_assignation_campagne(membre, campagne, sites_membre.distinct())
                except Exception:
                    pass

        return Response(
            {"detail": "Équipe de la campagne mise à jour avec succès."},
            status=status.HTTP_200_OK
        )
@action(detail=True, methods=['get'], url_path='rapport-sites')
def rapport_sites(self, request, pk=None):
        """
        GET /api/campagnes/{id}/rapport-sites/
        Synthèse par site : performances, répartition produits, goodies distribués 
        adaptés dynamiquement selon le type de campagne et de récompense.
        """
        campagne = self.get_object()
        sites_payload = []
        total_goodies_distribues = 0

        # On extrait les types pour appliquer les règles métiers
        est_mode_degustation = campagne.type_campagne in (Campagne.TypeCampagne.DEGUSTATION, Campagne.TypeCampagne.DEGUSTATION_VENTE)
        est_mode_vente = campagne.type_campagne in (Campagne.TypeCampagne.VENTE, Campagne.TypeCampagne.DEGUSTATION_VENTE)
        a_des_goodies    = campagne.type_recompense == Campagne.TypeRecompense.GOODIES
        a_des_promotions = campagne.type_recompense == Campagne.TypeRecompense.PROMOTIONS

        for site in campagne.sites.all().prefetch_related(
            'stocks_goodies__goodie', 'hotesses', 'superviseurs'
        ):
            # 1. Gestion des Dégustations
            if est_mode_degustation:
                tastings_qs = Degustation.objects.filter(site=site, campagne=campagne)
                degustations_count = tastings_qs.count()
                acheteurs_count = tastings_qs.filter(a_achete=True).count()
            else:
                tastings_qs = Degustation.objects.none()
                degustations_count = 0
                acheteurs_count = 0

            # 2. Gestion des Ventes & Chiffre d'affaires
            if est_mode_vente:
                ventes_qs = Vente.objects.filter(site=site)
                ventes_count = ventes_qs.count()
                chiffre_affaires = ventes_qs.aggregate(
                    total=Sum(F('produit__prix_indicatif') * F('quantite'))
                )['total'] or 0
            else:
                ventes_qs = Vente.objects.none()
                ventes_count = 0
                chiffre_affaires = 0

            # 3. Répartition des Produits
            produits_map = {}
            if est_mode_degustation:
                for row in tastings_qs.values('produit__nom').annotate(degustations=Count('id')):
                    nom = row['produit__nom'] or 'Produit'
                    produits_map[nom] = {
                        'produit_nom': nom,
                        'degustations': row['degustations'],
                        'ventes': 0,
                    }
            
            if est_mode_vente:
                for row in ventes_qs.values('produit__nom').annotate(ventes=Count('id')):
                    nom = row['produit__nom'] or 'Produit'
                    if nom not in produits_map:
                        produits_map[nom] = {
                            'produit_nom': nom,
                            'degustations': 0,
                            'ventes': row['ventes'],
                        }
                    else:
                        produits_map[nom]['ventes'] = row['ventes']

            produits_list = sorted(
                produits_map.values(),
                key=lambda p: p['degustations'] if est_mode_degustation else p['ventes'],
                reverse=True,
            )

            # 4. Gestion des Goodies (Roue de la fortune)
            goodies_list = []
            site_goodies_distribues = 0
            
            if a_des_goodies:
                for stock in site.stocks_goodies.all():
                    distribue = max(0, stock.quantite_initiale - stock.quantite_restante)
                    site_goodies_distribues += distribue
                    goodies_list.append({
                        'goodie_id': str(stock.goodie_id),
                        'goodie_nom': stock.goodie.nom,
                        'quantite_initiale': stock.quantite_initiale,
                        'quantite_restante': stock.quantite_restante,
                        'quantite_distribuee': distribue,
                    })

            total_goodies_distribues += site_goodies_distribues

            # 5. Statistiques des règles promotionnelles par site
            promos_list = []
            total_gains_site = 0
            total_produits_site = 0

            if a_des_promotions:
                promotions_campagne = campagne.promotions.filter(is_active=True)
                for promo in promotions_campagne:
                    gains_qs = GainPromotion.objects.filter(
                        promotion=promo, site=site
                    )
                    gains_count = gains_qs.count()
                    produits_count = gains_count * promo.quantite_requise
                    total_gains_site += gains_count
                    total_produits_site += produits_count
                    promos_list.append({
                        'promotion_id': str(promo.id),
                        'recompense_description': promo.recompense_description,
                        'type_promotion': promo.type_promotion,
                        'quantite_requise': promo.quantite_requise,
                        'gains_count': gains_count,
                        'produits_concernes': produits_count,
                    })

            taux_conversion = (
                round((acheteurs_count / degustations_count) * 100)
                if degustations_count and est_mode_degustation else 0
            )

            # Construction du payload adapté
            payload_site = {
                'id': str(site.id),
                'nom': site.nom,
                'ville': site.ville,
                'emplacement_precis': site.emplacement_precis,
                'nb_hotesses': site.hotesses.count(),
                'nb_superviseurs': site.superviseurs.count(),
            }

            # On n'injecte les clés dans le JSON que si elles concernent le type de campagne choisi
            if est_mode_degustation:
                payload_site.update({
                    'degustations': degustations_count,
                    'acheteurs': acheteurs_count,
                    'taux_conversion': taux_conversion,
                })
            
            if est_mode_vente:
                payload_site.update({
                    'ventes': ventes_count,
                    'chiffre_affaires': str(chiffre_affaires),
                })

            payload_site['produits'] = produits_list

            if a_des_goodies:
                payload_site.update({
                    'goodies': goodies_list,
                    'goodies_distribues_total': site_goodies_distribues,
                })

            if a_des_promotions:
                payload_site.update({
                    'promotions_stats': promos_list,
                    'gains_total': total_gains_site,
                    'produits_concernes_total': total_produits_site,
                })

            sites_payload.append(payload_site)

        # Totaux généraux de la réponse
        totaux = {'sites': len(sites_payload)}
        if est_mode_degustation:
            totaux['degustations'] = sum(s.get('degustations', 0) for s in sites_payload)
        if est_mode_vente:
            totaux['ventes'] = sum(s.get('ventes', 0) for s in sites_payload)
        if a_des_goodies:
            totaux['goodies_distribues'] = total_goodies_distribues

        if a_des_promotions:
            totaux['gains_promotions'] = sum(s.get('gains_total', 0) for s in sites_payload)
            totaux['produits_concernes'] = sum(s.get('produits_concernes_total', 0) for s in sites_payload)

        return Response({
            'campagne_id': str(campagne.id),
            'campagne_nom': campagne.nom,
            'type_campagne': campagne.type_campagne,
            'type_recompense': campagne.type_recompense,
            'sites': sites_payload,
            'totaux': totaux,
        })

@action(detail=True, methods=['get'], url_path='goodies')
def goodies(self, request, pk=None):
        """
        GET /api/campagnes/{id}/goodies/
        Retourne la liste des goodies associés à cette campagne.
        """
        campagne = self.get_object()
        goodies = campagne.goodies.select_related('entreprise').prefetch_related('stocks_sites')
        serializer = GoodieSerializer(goodies, many=True)
        return Response(serializer.data)