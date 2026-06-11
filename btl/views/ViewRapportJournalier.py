from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import RapportJournalier, RemoteUser
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers import RapportJournalierSerializer


class RapportJournalierViewSet(viewsets.ReadOnlyModelViewSet):
    """
    Lecture seule des rapports journaliers (générés par Celery).
    Filtres GET : ?site=<id>  ?hotesse=<id>  ?date=YYYY-MM-DD
    Action POST /rapports-journaliers/generer/ — force la génération manuelle (admin).
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]
    serializer_class = RapportJournalierSerializer

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
