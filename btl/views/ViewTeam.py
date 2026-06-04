from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from btl.models import Campagne, RemoteUser
from btl.serializers import CampagneDetailSerializer

class CampagneViewSet(viewsets.ModelViewSet):
    queryset = Campagne.objects.all()
    serializer_class = CampagneDetailSerializer
    permission_classes = [IsAuthenticated]

    @action(detail=True, methods=['post'], url_path='manage-team')
    def manage_team(self, request, pk=None):
        """
        Endpoint : POST /api/campagnes/{id}/manage-team/
        Permet d'assigner massivement des hôtesses et superviseurs à une campagne.
        Format JSON attendu :
        {
            "superviseurs_ids": [1, 2],
            "hotesses_ids": [5, 6, 7]
        }
        """
        campagne = self.get_object()
        superviseurs_ids = request.data.get('superviseurs_ids', [])
        hotesses_ids = request.data.get('hotesses_ids', [])

        # 1. Validation et filtrage des utilisateurs par rôle pour éviter les erreurs
        # (On s'assure qu'on n'assigne pas une hôtesse comme superviseur par exemple)
        superviseurs = RemoteUser.objects.filter(id__in=superviseurs_ids, role=RemoteUser.Roles.SUPERVISEUR)
        hotesses = RemoteUser.objects.filter(id__in=hotesses_ids, role=RemoteUser.Roles.HOTESSES)

        # 2. Mise à jour des relations ManyToMany (.set() remplace l'ancienne équipe par la nouvelle)
        campagne.superviseurs.set(superviseurs)
        campagne.hotesses.set(hotesses)

        # 3. [Optionnel] C'est ici que tu peux déclencher ton script d'envoi d'emails !
        # Exemple : 
        # pour chaque hôtesse dans hotesses -> envoyer_mail_notification_campagne(hotesse, campagne)

        return Response(
            {"detail": "L'équipe de la campagne a été mise à jour avec succès."},
            status=status.HTTP_200_OK
        )