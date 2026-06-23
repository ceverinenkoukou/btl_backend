from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated

from btl.models import RapportJournalierConfig, Campagne
from btl.permissions import IsSuperviseurOrAdmin, IsPasswordChanged
from btl.serializers import RapportJournalierConfigSerializer


class RapportJournalierConfigViewSet(viewsets.ModelViewSet):
    """
    CRUD configuration du bulletin journalier d'une campagne.
    - Lecture        : tout utilisateur authentifié (filtrable par ?campagne=<id>)
    - Création/MAJ   : superviseur ou admin uniquement
    - Le champ configure_par est automatiquement renseigné avec l'utilisateur courant
    - Une campagne n'a qu'une seule config (OneToOne) ; utiliser l'action /par-campagne/
      pour récupérer ou créer-/mettre-à-jour en une seule requête.
    """
    serializer_class = RapportJournalierConfigSerializer

    def get_permissions(self):
        if self.action in ('create', 'update', 'partial_update', 'destroy', 'configurer'):
            return [IsAuthenticated(), IsSuperviseurOrAdmin(), IsPasswordChanged()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_queryset(self):
        qs = RapportJournalierConfig.objects.select_related('campagne', 'configure_par')
        campagne_id = self.request.query_params.get('campagne')
        if campagne_id:
            qs = qs.filter(campagne_id=campagne_id)
        return qs

    def perform_create(self, serializer):
        serializer.save(configure_par=self.request.user)

    def perform_update(self, serializer):
        serializer.save(configure_par=self.request.user)

    @action(detail=False, methods=['get', 'put', 'patch'], url_path='par-campagne')
    def par_campagne(self, request):
        """
        GET  /api/rapport-journalier-configs/par-campagne/?campagne=<id>
             → retourne la config existante ou les valeurs par défaut (sans créer en base)

        PUT/PATCH /api/rapport-journalier-configs/par-campagne/?campagne=<id>
             → crée ou met à jour la config de cette campagne
        """
        campagne_id = request.query_params.get('campagne')
        if not campagne_id:
            return Response(
                {"detail": "Le paramètre ?campagne=<id> est requis."},
                status=status.HTTP_400_BAD_REQUEST
            )

        try:
            campagne = Campagne.objects.get(id=campagne_id)
        except Campagne.DoesNotExist:
            return Response({"detail": "Campagne introuvable."}, status=status.HTTP_404_NOT_FOUND)

        if request.method == 'GET':
            try:
                config = RapportJournalierConfig.objects.get(campagne=campagne)
                serializer = self.get_serializer(config)
                return Response(serializer.data)
            except RapportJournalierConfig.DoesNotExist:
                return Response({"detail": "Aucune configuration. Les valeurs par défaut seront utilisées.", "defaults": True})

        # PUT / PATCH — superviseur ou admin requis
        if not (request.user.role in ('Superviseur', 'Administrateur')):
            return Response({"detail": "Accès réservé aux superviseurs et administrateurs."}, status=status.HTTP_403_FORBIDDEN)

        config, created = RapportJournalierConfig.objects.get_or_create(campagne=campagne)
        partial = request.method == 'PATCH'
        serializer = self.get_serializer(config, data=request.data, partial=partial)
        serializer.is_valid(raise_exception=True)
        serializer.save(configure_par=request.user)
        return Response(serializer.data, status=status.HTTP_201_CREATED if created else status.HTTP_200_OK)
