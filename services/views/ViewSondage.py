from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import RemoteUser, Site
from btl.permissions import IsPasswordChanged, IsAdmin
from services.models import Sondage, CampagneService
from services.serializers import SondageSerializer


class SondageViewSet(viewsets.ModelViewSet):
    """
    Gestion des sondages (interaction terrain pour une campagne service).

    Règles d'accès :
    - Hôtesse     : voit et crée uniquement ses propres sondages
    - Superviseur : voit les sondages des sites qu'il supervise
    - Entreprise  : voit les sondages de ses campagnes service
    - Admin       : voit tout

    La création est ouverte aux hôtesses, et — pour le compte d'une hôtesse —
    aux Superviseurs/Admins (cf. SondageSerializer + resoudre_hotesse_et_verifier_site,
    même mécanisme que la saisie manuelle côté produits).
    """
    serializer_class = SondageSerializer
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action == 'destroy':
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        user = self.request.user
        qs = Sondage.objects.select_related('site', 'hotesse', 'service', 'campagne_service')

        if user.role == RemoteUser.Roles.ADMIN:
            return qs

        if user.role == RemoteUser.Roles.HOTESSES:
            return qs.filter(hotesse=user)

        if user.role == RemoteUser.Roles.SUPERVISEUR:
            return qs.filter(site__superviseurs=user)

        if user.role == RemoteUser.Roles.ENTREPRISES:
            return qs.filter(campagne_service__entreprise__user=user)

        return Sondage.objects.none()

    def create(self, request, *args, **kwargs):
        if request.user.role not in (
            RemoteUser.Roles.HOTESSES, RemoteUser.Roles.SUPERVISEUR, RemoteUser.Roles.ADMIN,
        ):
            return Response(
                {"detail": "Vous n'avez pas les droits pour saisir un sondage."},
                status=status.HTTP_403_FORBIDDEN
            )
        return super().create(request, *args, **kwargs)

    @action(detail=False, methods=['get'], url_path='mon-site')
    def mon_site(self, request):
        """
        GET /api/sondages/mon-site/?site_id=<uuid>&campagne_service_id=<uuid>
        Renvoie à l'hôtesse (ou à l'admin/superviseur en saisie manuelle) les
        infos nécessaires pour sa saisie : services et récompenses
        disponibles de la campagne, hôtesses assignées au site.
        """
        site_id = request.query_params.get('site_id')
        campagne_service_id = request.query_params.get('campagne_service_id')
        if not site_id or not campagne_service_id:
            return Response(
                {"detail": "Paramètres site_id et campagne_service_id requis."},
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
            return Response({"detail": "Site introuvable ou non assigné."}, status=status.HTTP_404_NOT_FOUND)

        try:
            campagne_service = CampagneService.objects.get(pk=campagne_service_id, sites=site)
        except CampagneService.DoesNotExist:
            return Response(
                {"detail": "Campagne service introuvable pour ce site."},
                status=status.HTTP_404_NOT_FOUND
            )

        services_data = [
            {'id': str(s.id), 'nom': s.nom}
            for s in campagne_service.get_services_disponibles()
        ]
        recompenses_data = [
            {'id': str(r.id), 'nom': r.nom, 'quantite_restante': r.quantite_restante}
            for r in campagne_service.recompenses.all()
        ]

        return Response({
            'site_id': str(site.id),
            'site_nom': site.nom,
            'campagne_service_id': str(campagne_service.id),
            'campagne_service_nom': campagne_service.nom,
            'type_campagne_service': campagne_service.type_campagne_service,
            'type_campagne_service_display': campagne_service.get_type_campagne_service_display(),
            'entreprise_nom': campagne_service.entreprise.nom_commercial,
            'services': services_data,
            'auto_select_service': len(services_data) == 1,
            'recompenses_disponibles': recompenses_data,
            'hotesses_disponibles': [
                {'id': str(h.id), 'name': h.name} for h in site.hotesses.all()
            ],
        })
