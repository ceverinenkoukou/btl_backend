from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db import transaction
from django.db.models import Q

from btl.models import RemoteUser, Site
from btl.permissions import IsPasswordChanged
from btl.services.saisie_manuelle import resoudre_hotesse_et_verifier_site
from services.models import GainRecompenseService, RecompenseService, Sondage
from services.serializers import GainRecompenseServiceSerializer, EnregistrerGainRecompenseServiceSerializer


class GainRecompenseServiceViewSet(viewsets.ModelViewSet):
    """
    CRUD (lecture + enregistrement) des gains de récompense service.
    - Liste : GET /api/gains-recompenses-services/
    - Création : POST /api/gains-recompenses-services/enregistrer/
    """
    serializer_class = GainRecompenseServiceSerializer
    permission_classes = [IsAuthenticated, IsPasswordChanged]
    http_method_names = ['get', 'post', 'head', 'options']

    def get_queryset(self):
        user = self.request.user
        qs = GainRecompenseService.objects.select_related('recompense', 'site', 'hotesse')

        if user.role == RemoteUser.Roles.ADMIN:
            return qs

        if user.role == RemoteUser.Roles.HOTESSES:
            return qs.filter(
                Q(site__hotesses=user) | Q(hotesse=user)
            ).distinct()

        if user.role == RemoteUser.Roles.SUPERVISEUR:
            return qs.filter(site__superviseurs=user)

        if user.role == RemoteUser.Roles.ENTREPRISES:
            return qs.filter(recompense__campagne_service__entreprise__user=user)

        return GainRecompenseService.objects.none()

    @action(detail=False, methods=['post'], url_path='enregistrer')
    def enregistrer(self, request):
        """
        POST /api/gains-recompenses-services/enregistrer/
        Enregistre qu'une hôtesse a remis une récompense à un client.
        Décompte le stock de la récompense.
        """
        serializer = EnregistrerGainRecompenseServiceSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        data = serializer.validated_data

        try:
            site = Site.objects.get(id=data['site_id'])
        except Site.DoesNotExist:
            return Response({"detail": "Ce site n'existe pas."}, status=status.HTTP_404_NOT_FOUND)

        hotesse = resoudre_hotesse_et_verifier_site(request.user, site, data.get('hotesse_id'))

        sondage = None
        if data.get('sondage_id'):
            sondage = Sondage.objects.filter(id=data['sondage_id'], hotesse=hotesse).first()

        try:
            with transaction.atomic():
                recompense = RecompenseService.objects.select_for_update().get(id=data['recompense_id'])
                if not recompense.distribuer(1):
                    return Response(
                        {"detail": "Stock insuffisant pour cette récompense."},
                        status=status.HTTP_400_BAD_REQUEST
                    )
                gain = GainRecompenseService.objects.create(
                    sondage=sondage,
                    recompense=recompense,
                    site=site,
                    hotesse=hotesse,
                    nom_client=data.get('nom_client', '').strip() or None,
                )
        except RecompenseService.DoesNotExist:
            return Response({"detail": "Cette récompense n'existe pas."}, status=status.HTTP_404_NOT_FOUND)

        return Response(
            {
                "detail": f"Récompense « {recompense.nom} » remise avec succès.",
                "gain": GainRecompenseServiceSerializer(gain).data,
                "stock_restant": recompense.quantite_restante,
            },
            status=status.HTTP_201_CREATED,
        )
