import logging

from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db import transaction

from btl.models import Entreprise, RemoteUser, Produit
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers import EntrepriseSerializer, CreateEntrepriseSerializer
from btl.services.email_service import generer_mot_de_passe_provisoire, envoyer_email_bienvenue_entreprise

logger = logging.getLogger(__name__)


class EntrepriseViewSet(viewsets.ModelViewSet):
    """
    CRUD entreprises.
    - Création (POST) : admin uniquement — crée le RemoteUser + profil Entreprise + envoie l'email.
    - Lecture (GET)   : admin voit tout ; une entreprise voit son propre profil.
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action in ('create', 'destroy', 'update', 'partial_update'):
            return [IsAuthenticated(), IsAdmin()]
        return [IsAuthenticated(), IsPasswordChanged()]

    def get_serializer_class(self):
        if self.action == 'create':
            return CreateEntrepriseSerializer
        return EntrepriseSerializer

    def get_queryset(self):
        user = self.request.user
        if user.role == RemoteUser.Roles.ADMIN:
            return Entreprise.objects.all()
        if user.role == RemoteUser.Roles.ENTREPRISES:
            return Entreprise.objects.filter(user=user)
        return Entreprise.objects.none()

    def create(self, request, *args, **kwargs):
        """
        POST /api/entreprises/
        Crée en une seule transaction atomique :
          - le RemoteUser (rôle Entreprise)
          - le profil Entreprise
          - les Produits fournis (optionnel)
        Génère un mot de passe provisoire et envoie l'email de bienvenue.

        Payload minimal  : { "email": "...", "nom_commercial": "..." }
        Payload complet  : + telephone, adresse, branding, produits[]
        """
        serializer = CreateEntrepriseSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        data = serializer.validated_data

        password = generer_mot_de_passe_provisoire()

        with transaction.atomic():
            user = RemoteUser.objects.create_user(
                email=data['email'],
                name=data['name'],
                role=RemoteUser.Roles.ENTREPRISES,
                password=password,
            )

            entreprise = Entreprise.objects.create(
                user=user,
                nom_commercial=data['nom_commercial'],
                telephone=data.get('telephone', ''),
                adresse=data.get('adresse', ''),
                couleur_primaire=data.get('couleur_primaire', '#006776'),
                couleur_secondaire=data.get('couleur_secondaire', '#00899b'),
                logo_url=data.get('logo_url') or None,
            )

            produits_data = data.get('produits', [])
            if produits_data:
                Produit.objects.bulk_create([
                    Produit(
                        entreprise=entreprise,
                        nom=p['nom'],
                        description=p.get('description') or '',
                        type_conditionnement=p.get('type_conditionnement', Produit.TypeConditionnement.UNITE),
                        prix_indicatif=p.get('prix_indicatif'),
                    )
                    for p in produits_data
                ])

        email_sent = False
        email_error = None
        try:
            # On importe et on lance la tâche Celery en arrière-plan
            from btl.tasks import task_envoyer_email_bienvenue_entreprise
            task_envoyer_email_bienvenue_entreprise.delay(entreprise.id, password)
            email_sent = True
        except Exception as exc:
            email_error = str(exc)
            logger.exception(
                "Échec de la mise en file d'attente Celery de l'e-mail pour %s",
                entreprise.nom_commercial,
            )

        payload = EntrepriseSerializer(entreprise).data
        payload['email_sent'] = email_sent
        if email_error:
            payload['email_error'] = email_error

        return Response(payload, status=status.HTTP_201_CREATED)

    @action(detail=True, methods=['get'], url_path='campagnes',
            permission_classes=[IsAuthenticated, IsPasswordChanged])
    def campagnes(self, request, pk=None):
        """GET /api/entreprises/{id}/campagnes/ — Liste des campagnes de l'entreprise."""
        from btl.serializers import CampagneListSerializer
        entreprise = self.get_object()
        qs = entreprise.campagnes.all()
        serializer = CampagneListSerializer(qs, many=True)
        return Response(serializer.data)
