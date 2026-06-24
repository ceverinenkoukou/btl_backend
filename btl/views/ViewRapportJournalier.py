from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db.models import Q, Count, Avg

from btl.models import (
    RapportJournalier, RemoteUser, Degustation, Vente, GainGoodie,
    LivraisonGoodiesJour, StockGoodieSite, GainPromotion, Promotion, DonneesSiteJour,
)
from btl.permissions import IsAdmin, IsSuperviseurOrAdmin, IsPasswordChanged
from btl.serializers import RapportJournalierSerializer


class RapportJournalierViewSet(viewsets.mixins.ListModelMixin,
                                viewsets.mixins.RetrieveModelMixin,
                                viewsets.mixins.UpdateModelMixin,
                                viewsets.GenericViewSet):
    """
    Rapports journaliers (générés par Celery, chaque soir, sans envoi d'email).
    Lecture pour tout utilisateur authentifié concerné ; seuls les champs de
    saisie manuelle (stock, personnes touchées, avis, observation) sont
    modifiables, par un superviseur ou un admin (PATCH).
    Filtres GET : ?site=<id>  ?hotesse=<id>  ?date=YYYY-MM-DD
    Action POST /rapports-journaliers/generer/ — force la génération manuelle (admin).
    """
    serializer_class = RapportJournalierSerializer

    def get_permissions(self):
        if self.action == 'generer':
            return [IsAuthenticated(), IsAdmin()]
        if self.action in ('update', 'partial_update'):
            return [IsAuthenticated(), IsSuperviseurOrAdmin(), IsPasswordChanged()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        user = self.request.user
        qs = RapportJournalier.objects.select_related('site', 'hotesse')

        if user.role == RemoteUser.Roles.HOTESSES:
            qs = qs.filter(hotesse=user)
        elif user.role == RemoteUser.Roles.SUPERVISEUR:
            qs = qs.filter(site__superviseurs=user)
        elif user.role == RemoteUser.Roles.ENTREPRISES:
            qs = qs.filter(site__campagne__entreprise__user=user)
        elif user.role != RemoteUser.Roles.ADMIN:
            return RapportJournalier.objects.none()

        site_id = self.request.query_params.get('site')
        hotesse_id = self.request.query_params.get('hotesse')
        date = self.request.query_params.get('date')
        if site_id:
            qs = qs.filter(site_id=site_id)
        if hotesse_id:
            qs = qs.filter(hotesse_id=hotesse_id)
        if date:
            qs = qs.filter(date=date)
        return qs.order_by('-date')

    @action(detail=True, methods=['get'], url_path='bulletin')
    def bulletin(self, request, pk=None):
        """
        GET /api/rapports-journaliers/<id>/bulletin/
        Retourne le rapport enrichi des données calculées en direct (non stockées) :
        répartition par genre, UGs reçus/distribués/restants par goodie,
        détail des ventes promo / hors promo.
        """
        rapport = self.get_object()
        site = rapport.site
        hotesse = rapport.hotesse
        date = rapport.date
        site_hotesses_count = site.hotesses.count()

        base = self.get_serializer(rapport).data

        # ── Répartition par genre (dégustations du jour) ──────────────
        genre_counts = {row['genre']: row['n'] for row in Degustation.objects.filter(
            site=site, hotesse=hotesse, created_at__date=date, genre__isnull=False,
        ).values('genre').annotate(n=Count('id'))}
        genre_breakdown = {
            'hommes': genre_counts.get(Degustation.Genre.HOMME, 0),
            'femmes': genre_counts.get(Degustation.Genre.FEMME, 0),
        }

        # ── Répartition par tranche d'âge (dégustations du jour) ───────
        degustations_du_jour = Degustation.objects.filter(
            site=site, hotesse=hotesse, created_at__date=date,
        )
        tranche_age_counts = {row['tranche_age']: row['n'] for row in degustations_du_jour.filter(
            tranche_age__isnull=False,
        ).values('tranche_age').annotate(n=Count('id'))}
        tranche_age_breakdown = [
            {'tranche_age': value, 'label': label, 'quantite': tranche_age_counts.get(value, 0)}
            for value, label in Degustation.TrancheAge.choices
        ]

        # ── Notes moyennes de goût et d'ambiance ce jour-là ────────────
        notes_moyennes = degustations_du_jour.aggregate(
            note_gout=Avg('note_gout'), note_ambiance=Avg('note_ambiance'),
        )

        # ── UGs (goodies) reçus sur le site ce jour-là ─────────────────
        ugs_recus = [
            {'goodie': row['goodie__nom'], 'quantite': row['quantite']}
            for row in LivraisonGoodiesJour.objects.filter(site=site, date=date)
            .values('goodie__nom').annotate(quantite=Count('id'))
        ]

        # ── UGs distribués (mêmes règles que l'agrégation nocturne) ────
        goodies_filter = Q(degustation__hotesse=hotesse)
        if site_hotesses_count == 1:
            goodies_filter |= Q(degustation__isnull=True)
        ugs_distribues = [
            {'goodie': row['goodie__nom'], 'quantite': row['quantite']}
            for row in GainGoodie.objects.filter(site=site, created_at__date=date)
            .filter(goodies_filter)
            .values('goodie__nom').annotate(quantite=Count('id'))
        ]

        # ── UGs restants en stock sur le site (snapshot courant) ───────
        ugs_restants = [
            {'goodie': row['goodie__nom'], 'quantite': row['quantite_restante']}
            for row in StockGoodieSite.objects.filter(site=site).values('goodie__nom', 'quantite_restante')
        ]

        # ── Données du site ce jour-là (stock boissons, boissons gratuites) ──
        # Saisies par site/jour (indépendantes de l'hôtesse) par admin/superviseur.
        donnees_site = DonneesSiteJour.objects.filter(site=site, date=date).first()
        stock_boissons = donnees_site.stock_boissons if donnees_site else None
        nombre_boissons_gratuites = donnees_site.nombre_boissons_gratuites if donnees_site else None
        conditionnement_boissons = donnees_site.get_conditionnement_display() if donnees_site else None

        # ── Ventes hors promo (normales) ───────────────────────────────
        ventes_hors_promo = Vente.objects.filter(
            site=site, hotesse=hotesse, created_at__date=date, type_vente=Vente.TypeVente.NORMAL,
        ).count()

        # ── Détail des ventes promo : regroupées par mécanique (quantité offerte) ──
        promo_gains = GainPromotion.objects.filter(
            site=site, hotesse=hotesse, created_at__date=date,
            promotion__type_promotion=Promotion.TypePromotion.OFFERT,
        ).select_related('promotion')
        promo_groups = {}
        for gain in promo_gains:
            key = (gain.promotion.quantite_requise, gain.promotion.quantite_offerte)
            promo_groups[key] = promo_groups.get(key, 0) + 1
        ventes_promo_detail = [
            {
                'quantite_requise': req,
                'quantite_offerte': off,
                'occurrences': count,
                'total_offert': count * off,
            }
            for (req, off), count in promo_groups.items()
        ]

        return Response({
            **base,
            'genre_breakdown': genre_breakdown,
            'tranche_age_breakdown': tranche_age_breakdown,
            'notes_moyennes': notes_moyennes,
            'ugs_recus': ugs_recus,
            'ugs_distribues': ugs_distribues,
            'ugs_restants': ugs_restants,
            'ventes_hors_promo': ventes_hors_promo,
            'ventes_promo_detail': ventes_promo_detail,
            'stock_boissons': stock_boissons,
            'nombre_boissons_gratuites': nombre_boissons_gratuites,
            'conditionnement_boissons': conditionnement_boissons,
        })

    @action(detail=False, methods=['post'], url_path='generer',
            permission_classes=[IsAuthenticated, IsAdmin])
    def generer(self, request):
        """
        POST /api/rapports-journaliers/generer/
        Déclenche manuellement la tâche Celery de génération pour la date donnée.
        Payload : { "date": "YYYY-MM-DD" }  (optionnel — défaut = aujourd'hui)
        """
        from btl.tasks import task_generer_rapports_journaliers
        from django.utils import timezone
        date_str = request.data.get('date') or timezone.localdate().isoformat()
        task_generer_rapports_journaliers.delay(date_str)
        return Response(
            {"detail": f"Génération des rapports lancée pour le {date_str}."},
            status=status.HTTP_202_ACCEPTED,
        )
