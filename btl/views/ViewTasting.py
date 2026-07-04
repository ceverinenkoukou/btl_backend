from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db.models import Q
from django.utils import timezone

from btl.models import Campagne, Degustation, LivraisonGoodiesJour, RemoteUser, Site
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
            qs = Degustation.objects.all()
        elif user.role == RemoteUser.Roles.HOTESSES:
            qs = Degustation.objects.filter(hotesse=user)
        elif user.role == RemoteUser.Roles.SUPERVISEUR:
            qs = Degustation.objects.filter(site__in=user.sites_supervises.all())
        elif user.role == RemoteUser.Roles.ENTREPRISES:
            qs = Degustation.objects.filter(campagne__entreprise__user=user)
        else:
            return Degustation.objects.none()

        campagne_id = self.request.query_params.get('campagne')
        if campagne_id:
            qs = qs.filter(campagne_id=campagne_id)
        return qs

    def create(self, request, *args, **kwargs):
        # Hôtesse : saisit pour elle-même. Admin/Superviseur : saisie
        # manuelle pour le compte d'une hôtesse (cf. champ hotesse_id),
        # vérifiée dans DegustationSerializer.create.
        if request.user.role not in (
            RemoteUser.Roles.HOTESSES, RemoteUser.Roles.SUPERVISEUR, RemoteUser.Roles.ADMIN,
        ):
            return Response(
                {"detail": "Vous n'avez pas les droits pour saisir une dégustation."},
                status=status.HTTP_403_FORBIDDEN
            )
        # Garde-fou : les campagnes VENTE n'utilisent pas la table Degustation.
        # Les enregistrements passent par POST /ventes/creer-directe/ ou
        # POST /promotions/{id}/enregistrer-gain/ selon le cas.
        site_id = request.data.get('site')
        if site_id:
            try:
                site = Site.objects.select_related('campagne').get(pk=site_id)
                if site.campagne and site.campagne.type_campagne == Campagne.TypeCampagne.VENTE:
                    return Response(
                        {"detail": "Les campagnes VENTE enregistrent directement dans Vente. Utilisez /ventes/creer-directe/ ou /promotions/{id}/enregistrer-gain/."},
                        status=status.HTTP_400_BAD_REQUEST
                    )
            except Site.DoesNotExist:
                pass
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

        user = request.user
        sites_qs = Site.objects.all()
        if user.role == RemoteUser.Roles.HOTESSES:
            sites_qs = sites_qs.filter(hotesses=user)
        elif user.role == RemoteUser.Roles.SUPERVISEUR:
            sites_qs = sites_qs.filter(superviseurs=user)
        elif user.role != RemoteUser.Roles.ADMIN:
            return Response({"detail": "Accès refusé."}, status=status.HTTP_403_FORBIDDEN)

        try:
            site = sites_qs.get(pk=site_id)
        except Site.DoesNotExist:
            return Response(
                {"detail": "Site introuvable ou non assigné."},
                status=status.HTTP_404_NOT_FOUND
            )

        if not site.campagne:
            return Response(
                {"detail": "Ce site n'a pas de campagne produit (dégustation/vente) — c'est un site service uniquement."},
                status=status.HTTP_400_BAD_REQUEST
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
        # Seuls les goodies livrés aujourd'hui sur ce site (LivraisonGoodiesJour),
        # avec un stock du jour encore disponible, apparaissent sur la roue.
        # Un goodie sans livraison saisie pour la date du jour vaut 0 et
        # disparaît donc de la roue de ce site (mais peut être disponible sur
        # un autre site qui l'a, lui, reçu aujourd'hui).
        restants_par_goodie = {
            livraison.goodie_id: livraison.restants_du_jour
            for livraison in LivraisonGoodiesJour.objects.filter(
                site=site, date=timezone.localdate()
            ).select_related('goodie')
        }
        goodies_data = [
            {
                'id': str(goodie.id),
                'nom': goodie.nom,
                'quantite_restante': restants_par_goodie[goodie.id],
            }
            for goodie in site.campagne.goodies.all()
            if restants_par_goodie.get(goodie.id, 0) > 0
        ]

        # Récupérer les promotions actives de la campagne si type_recompense = PROMOTIONS
        promotions_data = []
        if site.campagne.type_recompense == Campagne.TypeRecompense.PROMOTIONS:
            promotions = site.campagne.promotions.filter(is_active=True).filter(
                Q(sites__isnull=True) | Q(sites=site)
            ).distinct().order_by('quantite_requise')
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
            # Pilote la variante de formulaire affichée côté hôtesse
            # (dégustation seule / vente seule / dégustation + vente).
            'type_campagne': site.campagne.type_campagne,
            'type_campagne_display': site.campagne.get_type_campagne_display(),
            'type_recompense': site.campagne.type_recompense,
            'type_recompense_display': site.campagne.get_type_recompense_display(),
            'note_gout_active': site.campagne.note_gout_active,
            'note_gout_max': site.campagne.note_gout_max,
            'note_ambiance_active': site.campagne.note_ambiance_active,
            'note_ambiance_max': site.campagne.note_ambiance_max,
            'produits': produits_data,
            'auto_select_produit': len(produits_data) == 1,
            'goodies_disponibles': goodies_data,
            'promotions': promotions_data,
            # Utilisé par l'écran de saisie manuelle (Admin/Superviseur) pour
            # choisir l'hôtesse pour le compte de qui la saisie est faite.
            'hotesses_disponibles': [
                {'id': str(h.id), 'name': h.name}
                for h in site.hotesses.all()
            ],
        })
