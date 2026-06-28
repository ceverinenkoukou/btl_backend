import logging

from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from django.db import transaction
from django.db.models import Sum, Count, F, Q

from btl.models import Entreprise, RemoteUser, Produit
from btl.permissions import IsAdmin, IsPasswordChanged
from btl.serializers import EntrepriseSerializer, CreateEntrepriseSerializer
from btl.services.email_service import generer_mot_de_passe_provisoire, envoyer_email_bienvenue_entreprise
from services.models import Service

logger = logging.getLogger(__name__)


class EntrepriseViewSet(viewsets.ModelViewSet):
    """
    CRUD entreprises.
    - Création (POST) : admin uniquement — crée le RemoteUser + profil Entreprise + envoie l'email.
    - Lecture (GET)   : admin voit tout ; une entreprise voit son propre profil.
    """
    permission_classes = [IsAuthenticated, IsPasswordChanged]

    def get_permissions(self):
        if self.action in ('create', 'destroy', 'update', 'partial_update', 'resend_credentials'):
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
          - les Services fournis (optionnel — app services, campagnes service)
        Génère un mot de passe provisoire et envoie l'email de bienvenue.

        Payload minimal  : { "email": "...", "nom_commercial": "..." }
        Payload complet  : + telephone, adresse, branding, produits[], services[]
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

            services_data = data.get('services', [])
            if services_data:
                Service.objects.bulk_create([
                    Service(
                        entreprise=entreprise,
                        nom=s['nom'],
                        description=s.get('description') or '',
                    )
                    for s in services_data
                ])

        email_sent = False
        email_error = None
        try:
            # Import direct depuis le scope de l'application btl
            import btl.tasks as btl_tasks
            btl_tasks.task_envoyer_email_bienvenue_entreprise.delay(entreprise.id, password)
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

    def partial_update(self, request, *args, **kwargs):
        """
        PATCH /api/entreprises/{id}/
        Permet de modifier l'entreprise ET de mettre à jour ou ajouter ses produits associés.
        """
        entreprise = self.get_object()
        
        # On extrait les produits du payload pour les traiter à part
        produits_data = request.data.pop('produits', None)
        
        # Validation et mise à jour des champs basiques de l'entreprise
        serializer = self.get_serializer(entreprise, data=request.data, partial=True)
        serializer.is_valid(raise_exception=True)
        
        with transaction.atomic():
            serializer.save()
            
            # Si le champ 'produits' est présent dans la requête (même si la liste est vide `[]`)
            if produits_data is not None:
                # Option choisie : On nettoie les anciens produits pour appliquer la nouvelle liste
                entreprise.produits.all().delete()
                
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

        # On recharge l'instance et renvoie les données complètes (avec la nouvelle liste de produits)
        return Response(EntrepriseSerializer(entreprise).data, status=status.HTTP_200_OK)

    def destroy(self, request, *args, **kwargs):
        """
        DELETE /api/entreprises/{id}/
        Suppression définitive (hard delete) de l'entreprise et de TOUTES ses données :
        campagnes, sites, dégustations, ventes, goodies, rapports, produits
        et compte utilisateur de l'entreprise.

        On utilise all_objects (manager non-filtré) à chaque étape pour inclure
        les objets préalablement soft-deletés qui seraient ratés par la cascade
        Django si _base_manager était le SoftDeleteManager filtrant.

        Les comptes hôtesses et superviseurs sont conservés (ressources système
        indépendantes, réaffectables à d'autres campagnes).
        """
        from btl.models import (
            Site, Campagne, Degustation, Vente,
            GainGoodie, GainPromotion, RapportJournalier,
            StockGoodieSite, Goodie, Produit, Promotion,
        )

        entreprise = self.get_object()

        with transaction.atomic():
            # 1. Collecter toutes les campagnes (y compris soft-deletées)
            camp_ids = list(
                Campagne.all_objects.filter(entreprise=entreprise)
                .values_list('id', flat=True)
            )

            # 2. Collecter tous les sites de ces campagnes
            site_ids = list(
                Site.all_objects.filter(campagne_id__in=camp_ids)
                .values_list('id', flat=True)
            ) if camp_ids else []

            # 3. Supprimer les sites + toutes leurs données liées via la cascade
            #    Django ORM (avec base_manager_name='all_objects') gère automatiquement :
            #    Degustation, Vente, GainGoodie, GainPromotion, RapportJournalier,
            #    StockGoodieSite, ObjectifSite, SiteProduitPrix et les tables M2M
            #    (site_hotesses, site_superviseurs, promotion_sites).
            if site_ids:
                Site.all_objects.filter(id__in=site_ids).delete()

            # 4. Supprimer les goodies AVANT les campagnes
            #    (Goodie.campagne_id est une FK vers Campagne)
            Goodie.all_objects.filter(entreprise=entreprise).delete()

            # 5. Supprimer promotions puis campagnes (cascade gère les tables M2M)
            if camp_ids:
                Promotion.all_objects.filter(campagne_id__in=camp_ids).delete()
                Campagne.all_objects.filter(id__in=camp_ids).delete()

            # 6. Supprimer les produits
            Produit.all_objects.filter(entreprise=entreprise).delete()

            # 7. Supprimer le compte utilisateur de l'entreprise
            #    (cascade automatique vers l'objet Entreprise via OneToOneField)
            entreprise.user.hard_delete()

        return Response(status=status.HTTP_204_NO_CONTENT)

    @action(detail=True, methods=['post'], url_path='resend-credentials',
            permission_classes=[IsAuthenticated, IsAdmin])
    def resend_credentials(self, request, pk=None):
        """
        POST /api/entreprises/{id}/resend-credentials/
        Génère un nouveau mot de passe provisoire, le définit sur l'utilisateur lié
        à l'entreprise, réinitialise is_password_changed à False et renvoie l'email
        de bienvenue avec les nouveaux identifiants.
        """
        entreprise = self.get_object()
        password = generer_mot_de_passe_provisoire()
        entreprise.user.set_password(password)
        entreprise.user.is_password_changed = False
        entreprise.user.save()

        email_sent = False
        try:
            import btl.tasks as btl_tasks
            btl_tasks.task_envoyer_email_bienvenue_entreprise.delay(entreprise.id, password)
            email_sent = True
        except Exception:
            logger.exception(
                "Échec de la mise en file d'attente pour renvoyer les identifiants à %s",
                entreprise.user.email,
            )

        return Response(
            {
                "detail": f"Identifiants régénérés et envoyés à {entreprise.user.email}.",
                "email_sent": email_sent,
            },
            status=status.HTTP_200_OK,
        )

    @action(detail=True, methods=['get'], url_path='campagnes',
            permission_classes=[IsAuthenticated, IsPasswordChanged])
    def campagnes(self, request, pk=None):
        """GET /api/entreprises/{id}/campagnes/ — Liste des campagnes de l'entreprise."""
        from btl.serializers import CampagneListSerializer
        entreprise = self.get_object()
        qs = entreprise.campagnes.all()
        serializer = CampagneListSerializer(qs, many=True)
        return Response(serializer.data)

    @action(detail=True, methods=['get'], url_path='statistiques',
            permission_classes=[IsAuthenticated, IsPasswordChanged])
    def statistiques(self, request, pk=None):
        """
        GET /api/entreprises/{id}/statistiques/
        Retourne toutes les statistiques quantifiables de l'entreprise
        """
        from btl.models import Vente, GainGoodie, Goodie, Degustation, Site, StockGoodieSite
        
        entreprise = self.get_object()
        
        # Statistiques produits
        total_produits = entreprise.produits.count()
        produits_list = []
        for produit in entreprise.produits.all():
            ventes_normales = Vente.objects.filter(
                produit=produit,
                type_vente=Vente.TypeVente.NORMAL
            ).aggregate(total=Sum('quantite'))['total'] or 0
            
            ventes_offertes = Vente.objects.filter(
                produit=produit,
                type_vente=Vente.TypeVente.GRATUIT
            ).aggregate(total=Sum('quantite'))['total'] or 0
            
            produits_list.append({
                'id': str(produit.id),
                'nom': produit.nom,
                'type_conditionnement': produit.type_conditionnement,
                'prix_indicatif': str(produit.prix_indicatif) if produit.prix_indicatif else None,
                'ventes_normales': ventes_normales,
                'ventes_offertes': ventes_offertes,
                'total_vendu': ventes_normales + ventes_offertes,
            })
        
        # Statistiques goodies
        total_goodies = Slab = entreprise.goodies.count()
        total_goodies_initial = StockGoodieSite.objects.filter(
            goodie__entreprise=entreprise
        ).aggregate(total=Sum('quantite_initiale'))['total'] or 0
        
        total_goodies_distribues = StockGoodieSite.objects.filter(
            goodie__entreprise=entreprise
        ).aggregate(total=Sum(F('quantite_initiale') - F('quantite_restante')))['total'] or 0
        
        # Goodies par site
        goodies_par_site = {}
        for stock in StockGoodieSite.objects.filter(
            goodie__entreprise=entreprise
        ).select_related('site', 'goodie'):
            site_id = str(stock.site.id)
            if site_id not in goodies_par_site:
                goodies_par_site[site_id] = {
                    'site_id': site_id,
                    'site_nom': stock.site.nom,
                    'total_initial': 0,
                    'total_distribue': 0,
                    'goodies': []
                }
            
            distribue = stock.quantite_initiale - stock.quantite_restante
            goodies_par_site[site_id]['total_initial'] += stock.quantite_initiale
            goodies_par_site[site_id]['total_distribue'] += distribue
            goodies_par_site[site_id]['goodies'].append({
                'goodie_id': str(stock.goodie.id),
                'goodie_nom': stock.goodie.nom,
                'quantite_initiale': stock.quantite_initiale,
                'quantite_restante': stock.quantite_restante,
                'quantite_distribuee': distribue,
            })
        
        # Dégustations
        degustations_count = Degustation.objects.filter(
            campagne__entreprise=entreprise
        ).count()
        
        degustations_convertis = Degustation.objects.filter(
            campagne__entreprise=entreprise,
            a_achete=True
        ).count()
        
        # Requêtes de ventes simplifiées et précises
        ventes_normales_qs = Vente.objects.filter(
            produit__entreprise=entreprise,
            type_vente=Vente.TypeVente.NORMAL
        )
        ventes_offertes_qs = Vente.objects.filter(
            produit__entreprise=entreprise,
            type_vente=Vente.TypeVente.GRATUIT
        )
        
        total_ventes_normales = ventes_normales_qs.aggregate(total=Sum('quantite'))['total'] or 0
        total_ventes_offertes = ventes_offertes_qs.aggregate(total=Sum('quantite'))['total'] or 0
        total_ventes_count = ventes_normales_qs.count() + ventes_offertes_qs.count()
        
        # Chiffre d'affaires
        ca_total = ventes_normales_qs.aggregate(
            total=Sum(F('produit__prix_indicatif') * F('quantite'))
        )['total'] or 0
        
        # Sites
        sites_count = Site.objects.filter(
            campagne__entreprise=entreprise
        ).distinct().count()
        
        return Response({
            'entreprise_id': str(entreprise.id),
            'entreprise_nom': entreprise.nom_commercial,
            'resume': {
                'total_produits': total_produits,
                'total_goodies': total_goodies,
                'total_sites': sites_count,
                'total_degustations': degustations_count,
                'degustations_converties': degustations_convertis,
                'taux_conversion': int((degustations_convertis / degustations_count * 100) if degustations_count > 0 else 0),
            },
            'produits': {
                'total': total_produits,
                'detail': produits_list,
            },
            'goodies': {
                'total_types': total_goodies,
                'total_initial': total_goodies_initial,
                'total_distribue': total_goodies_distribues,
                'restant': total_goodies_initial - total_goodies_distribues,
                'taux_distribution': int((total_goodies_distribues / total_goodies_initial * 100) if total_goodies_initial > 0 else 0),
                'par_site': list(goodies_par_site.values()),
            },
            'ventes': {
                'total_normales': total_ventes_normales,
                'total_offertes': total_ventes_offertes,
                'total_unite': total_ventes_normales + total_ventes_offertes,
                'total_transactions': total_ventes_count,
                'chiffre_affaires': str(ca_total),
            },
            'degustations': {
                'total': degustations_count,
                'converties': degustations_convertis,
                'taux_conversion': int((degustations_convertis / degustations_count * 100) if degustations_count > 0 else 0),
            }
        })