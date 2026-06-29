from rest_framework import viewsets, status
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import LivraisonGoodiesJour, RemoteUser, StockGoodieSite
from btl.permissions import IsPasswordChanged, IsSuperviseurOrAdmin
from btl.serializers.LivraisonGoodiesJourSerializer import LivraisonGoodiesJourSerializer


class LivraisonGoodiesJourViewSet(viewsets.ModelViewSet):
    """
    Suivi des goodies apportés sur un site pour un jour d'animation.
    - Lecture   : admin, superviseur, entreprise
    - Écriture  : admin, superviseur uniquement
    """
    serializer_class = LivraisonGoodiesJourSerializer

    def get_permissions(self):
        if self.action in ('create', 'update', 'partial_update', 'destroy'):
            return [IsAuthenticated(), IsPasswordChanged(), IsSuperviseurOrAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        user = self.request.user
        qs = LivraisonGoodiesJour.objects.select_related(
            'site', 'goodie', 'enregistre_par',
            'site__campagne', 'site__campagne__entreprise',
        ).order_by('-date')

        if user.role == RemoteUser.Roles.ADMIN:
            pass
        elif user.role == RemoteUser.Roles.SUPERVISEUR:
            qs = qs.filter(site__superviseurs=user)
        elif user.role == RemoteUser.Roles.ENTREPRISES:
            qs = qs.filter(site__campagne__entreprise__user=user)
        elif user.role == RemoteUser.Roles.HOTESSES:
            qs = qs.filter(site__hotesses=user)
        else:
            return LivraisonGoodiesJour.objects.none()

        campagne = self.request.query_params.get('campagne')
        site = self.request.query_params.get('site')
        date = self.request.query_params.get('date')
        if campagne:
            qs = qs.filter(site__campagne=campagne)
        if site:
            qs = qs.filter(site=site)
        if date:
            qs = qs.filter(date=date)
        return qs

    def perform_create(self, serializer):
        serializer.save(enregistre_par=self.request.user)

    def create(self, request, *args, **kwargs):
        """
        Création ou réapprovisionnement de la livraison du jour (upsert).
        Si une livraison existe déjà pour (site, goodie, date), la quantité
        envoyée s'ADDITIONNE à `quantite_apportee` au lieu de l'écraser —
        permet de réapprovisionner un site en cours de journée sans avoir à
        recalculer le total déjà livré.

        Chaque quantité livrée alimente aussi le stock général
        (StockGoodieSite), créé automatiquement si besoin — la livraison du
        jour est la source, le stock général n'est qu'un cumul dérivé.
        """
        site_id = request.data.get('site')
        goodie_id = request.data.get('goodie')
        date = request.data.get('date')

        if site_id and goodie_id and date:
            try:
                existing = LivraisonGoodiesJour.objects.get(
                    site_id=site_id, goodie_id=goodie_id, date=date
                )
                quantite_ajoutee = int(request.data.get('quantite_apportee', 0))
                data = {**request.data, 'quantite_apportee': existing.quantite_apportee + quantite_ajoutee}
                serializer = self.get_serializer(existing, data=data, partial=True)
                serializer.is_valid(raise_exception=True)
                serializer.save(enregistre_par=request.user)
                self._alimenter_stock_general(site_id, goodie_id, quantite_ajoutee)
                return Response(serializer.data, status=status.HTTP_200_OK)
            except LivraisonGoodiesJour.DoesNotExist:
                pass

        response = super().create(request, *args, **kwargs)
        if response.status_code == status.HTTP_201_CREATED and site_id and goodie_id:
            self._alimenter_stock_general(site_id, goodie_id, int(request.data.get('quantite_apportee', 0)))
        return response

    def _alimenter_stock_general(self, site_id, goodie_id, quantite):
        """Reporte une quantité livrée sur le stock général cumulé du site."""
        if quantite <= 0:
            return
        stock, _ = StockGoodieSite.objects.get_or_create(site_id=site_id, goodie_id=goodie_id)
        stock.quantite_initiale += quantite
        stock.quantite_restante += quantite
        stock.save(update_fields=['quantite_initiale', 'quantite_restante'])
