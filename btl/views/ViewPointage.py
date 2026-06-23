from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
import datetime

from btl.models import Pointage, JourAnimation, RemoteUser
from btl.permissions import IsPasswordChanged
from btl.serializers.PointageSerializer import (
    PointageSerializer, PointerArriveeSerializer, PointerDepartSerializer
)


class PointageViewSet(viewsets.ModelViewSet):
    """
    Pointage arrivée/départ des hôtesses.

    Actions personnalisées :
      POST /api/pointages/pointer-arrivee/  — hôtesse enregistre son arrivée
      POST /api/pointages/pointer-depart/   — hôtesse enregistre son départ
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]
    serializer_class = PointageSerializer

    def get_queryset(self):
        user = self.request.user
        qs = Pointage.objects.select_related(
            'hotesse', 'site', 'site__campagne', 'jour'
        ).order_by('-date', 'heure_arrivee')

        if user.role == RemoteUser.Roles.ADMIN:
            pass
        elif user.role == RemoteUser.Roles.HOTESSES:
            qs = qs.filter(hotesse=user)
        elif user.role == RemoteUser.Roles.SUPERVISEUR:
            qs = qs.filter(site__superviseurs=user)
        elif user.role == RemoteUser.Roles.ENTREPRISES:
            qs = qs.filter(site__campagne__entreprise__user=user)
        else:
            return Pointage.objects.none()

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

    @action(detail=False, methods=['post'], url_path='pointer-arrivee')
    def pointer_arrivee(self, request):
        """
        POST /api/pointages/pointer-arrivee/
        Payload: { "site_id": "<uuid>" }
        """
        if request.user.role != RemoteUser.Roles.HOTESSES:
            return Response(
                {"detail": "Action réservée aux hôtesses."},
                status=status.HTTP_403_FORBIDDEN
            )
        serializer = PointerArriveeSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        site = serializer.validated_data['site_id']
        today = datetime.date.today()
        now = datetime.datetime.now().time()

        # Trouver le jour d'animation correspondant
        jour = JourAnimation.objects.filter(
            campagne=site.campagne,
            date=today,
        ).filter(
            site__isnull=True
        ).first() or JourAnimation.objects.filter(
            campagne=site.campagne,
            date=today,
            site=site
        ).first()

        pointage, created = Pointage.objects.get_or_create(
            hotesse=request.user,
            site=site,
            date=today,
            defaults={'heure_arrivee': now, 'jour': jour}
        )
        if not created:
            if pointage.heure_arrivee:
                return Response(
                    {"detail": "Vous avez déjà pointé votre arrivée aujourd'hui.",
                     "pointage": PointageSerializer(pointage).data},
                    status=status.HTTP_200_OK
                )
            pointage.heure_arrivee = now
            if jour and not pointage.jour:
                pointage.jour = jour
            pointage.save()

        return Response(
            {"detail": f"Arrivée pointée à {now.strftime('%H:%M')}.",
             "pointage": PointageSerializer(pointage).data},
            status=status.HTTP_201_CREATED if created else status.HTTP_200_OK
        )

    @action(detail=False, methods=['post'], url_path='pointer-depart')
    def pointer_depart(self, request):
        """
        POST /api/pointages/pointer-depart/
        Payload: { "site_id": "<uuid>" }
        """
        if request.user.role != RemoteUser.Roles.HOTESSES:
            return Response(
                {"detail": "Action réservée aux hôtesses."},
                status=status.HTTP_403_FORBIDDEN
            )
        serializer = PointerDepartSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        site = serializer.validated_data['site_id']
        today = datetime.date.today()
        now = datetime.datetime.now().time()

        try:
            pointage = Pointage.objects.get(hotesse=request.user, site=site, date=today)
        except Pointage.DoesNotExist:
            return Response(
                {"detail": "Vous n'avez pas encore pointé votre arrivée aujourd'hui."},
                status=status.HTTP_400_BAD_REQUEST
            )

        pointage.heure_depart = now
        pointage.save()
        return Response(
            {"detail": f"Départ pointé à {now.strftime('%H:%M')}.",
             "pointage": PointageSerializer(pointage).data},
            status=status.HTTP_200_OK
        )

    @action(detail=False, methods=['get'], url_path='mon-pointage-du-jour')
    def mon_pointage_du_jour(self, request):
        """GET /api/pointages/mon-pointage-du-jour/?site_id=<uuid>"""
        site_id = request.query_params.get('site_id')
        if not site_id:
            return Response({"detail": "Paramètre site_id requis."}, status=400)
        today = datetime.date.today()
        try:
            pointage = Pointage.objects.get(
                hotesse=request.user, site_id=site_id, date=today
            )
            return Response(PointageSerializer(pointage).data)
        except Pointage.DoesNotExist:
            return Response(None)
