from rest_framework import viewsets, status
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import LivraisonGoodiesJour, RemoteUser
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
        """Création ou mise à jour de la livraison du jour (upsert)."""
        site_id = request.data.get('site')
        goodie_id = request.data.get('goodie')
        date = request.data.get('date')

        if site_id and goodie_id and date:
            try:
                existing = LivraisonGoodiesJour.objects.get(
                    site_id=site_id, goodie_id=goodie_id, date=date
                )
                serializer = self.get_serializer(existing, data=request.data, partial=True)
                serializer.is_valid(raise_exception=True)
                serializer.save(enregistre_par=request.user)
                return Response(serializer.data, status=status.HTTP_200_OK)
            except LivraisonGoodiesJour.DoesNotExist:
                pass

        return super().create(request, *args, **kwargs)
