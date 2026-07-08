from config.celery import app


@app.task
def task_generer_rapports_journaliers(date_str=None):
    """
    Génère (ou met à jour) un RapportJournalier par hôtesse/site pour la date donnée.
    Ne déclenche plus d'envoi d'email — les rapports sont consultés depuis l'application.
    Planifié via CELERY_BEAT_SCHEDULE chaque soir à 23h00.
    Les champs renseignés manuellement (stock, personnes touchées, avis, observation)
    ne sont jamais écrasés par cette tâche.
    """
    from datetime import date as date_type
    from decimal import Decimal
    from django.db.models import Q, Sum
    from btl.models import Campagne, Site, Degustation, Vente, RapportJournalier, SiteProduitPrix, GainGoodie, Pointage

    target_date = date_type.fromisoformat(date_str) if date_str else date_type.today()

    for site in Site.objects.prefetch_related('hotesses', 'superviseurs', 'campagne').all():
        site_hotesses_count = site.hotesses.count()
        campagne_type = getattr(site.campagne, 'type_campagne', None) if site.campagne else None
        for hotesse in site.hotesses.all():
            # Les campagnes VENTE n'ont pas de véritables dégustations :
            # les enregistrements Degustation y sont créés comme ancre de session
            # mais ne doivent pas gonfler le compteur nb_degustations.
            if campagne_type == Campagne.TypeCampagne.VENTE:
                nb_deg = 0
            else:
                nb_deg = Degustation.objects.filter(
                    site=site, hotesse=hotesse, created_at__date=target_date
                ).count()

            ventes_qs = Vente.objects.filter(
                site=site, hotesse=hotesse, created_at__date=target_date
            ).select_related('produit')

            # Somme des quantités, pas le nombre de lignes Vente : une vente
            # avec quantite=3 doit compter pour 3 produits, pas pour 1
            # (même correctif que ventes_hors_promo dans ViewRapportJournalier.py).
            nb_ventes = ventes_qs.aggregate(total=Sum('quantite'))['total'] or 0

            ca = Decimal('0')
            for vente in ventes_qs:
                try:
                    prix = SiteProduitPrix.objects.get(site=site, produit=vente.produit).prix
                except SiteProduitPrix.DoesNotExist:
                    prix = vente.produit.prix_indicatif or Decimal('0')
                ca += prix * vente.quantite

            # Priorité 1 : lien via Degustation (campagnes DEGUSTATION)
            # Priorité 2 : GainGoodie.hotesse direct (campagnes VENTE après nettoyage)
            # Pour les sites mono-hôtesse : tout gain sans lien appartient à l'unique hôtesse
            goodies_filter = Q(degustation__hotesse=hotesse) | Q(hotesse=hotesse)
            if site_hotesses_count == 1:
                goodies_filter |= Q(degustation__isnull=True, hotesse__isnull=True)

            nb_goodies = GainGoodie.objects.filter(
                site=site,
                created_at__date=target_date,
            ).filter(goodies_filter).count()

            try:
                pointage = Pointage.objects.get(site=site, hotesse=hotesse, date=target_date)
                heure_arrivee = pointage.heure_arrivee
                heure_depart = pointage.heure_depart
            except Pointage.DoesNotExist:
                heure_arrivee = None
                heure_depart = None

            RapportJournalier.objects.update_or_create(
                site=site,
                hotesse=hotesse,
                date=target_date,
                defaults={
                    'nb_degustations': nb_deg,
                    'nb_ventes': nb_ventes,
                    'nb_goodies': nb_goodies,
                    'chiffre_affaires': ca,
                    'heure_arrivee': heure_arrivee,
                    'heure_depart': heure_depart,
                },
            )


@app.task
def task_reporter_stock_goodies(date_str=None):
    """
    Reporte les restants du jour vers le lendemain pour chaque (site, goodie).
    Crée une LivraisonGoodiesJour avec est_report=True si aucune livraison
    n'existe déjà pour le lendemain — sans toucher à StockGoodieSite (déjà
    comptabilisé lors de la livraison initiale).
    Planifié chaque soir à 23h45, après la génération des rapports (23h00).
    """
    from datetime import date as date_type, timedelta
    from btl.models import LivraisonGoodiesJour

    today = date_type.fromisoformat(date_str) if date_str else date_type.today()
    tomorrow = today + timedelta(days=1)

    livraisons = LivraisonGoodiesJour.objects.filter(date=today).select_related('site', 'goodie')
    created_count = 0

    for livraison in livraisons:
        restants = livraison.restants_du_jour
        if restants <= 0:
            continue
        _, created = LivraisonGoodiesJour.objects.get_or_create(
            site=livraison.site,
            goodie=livraison.goodie,
            date=tomorrow,
            defaults={
                'quantite_apportee': restants,
                'est_report': True,
            }
        )
        if created:
            created_count += 1

    return f"Report goodies : {created_count} livraison(s) créée(s) pour le {tomorrow}"


@app.task
def task_reporter_stock_boissons_gratuites(date_str=None):
    """
    Reporte le restant de boissons gratuites du jour vers le lendemain, par site.
    Crée une DonneesSiteJour avec est_report_gratuites=True si aucune entrée
    n'existe déjà pour le lendemain sur ce site (même logique que
    task_reporter_stock_goodies, mais au grain site+jour au lieu de site+goodie
    puisque DonneesSiteJour n'a pas de dimension goodie).
    Planifié chaque soir à 23h50, après le report des goodies (23h45).
    """
    from datetime import date as date_type, timedelta
    from btl.models import DonneesSiteJour

    today = date_type.fromisoformat(date_str) if date_str else date_type.today()
    tomorrow = today + timedelta(days=1)

    entries = DonneesSiteJour.objects.filter(date=today).select_related('site')
    created_count = 0

    for entry in entries:
        restants = entry.restants_gratuites_du_jour
        if not restants:
            continue
        _, created = DonneesSiteJour.objects.get_or_create(
            site=entry.site,
            date=tomorrow,
            defaults={
                'quantite_gratuites_recue': restants,
                'est_report_gratuites': True,
                'conditionnement': entry.conditionnement,
            }
        )
        if created:
            created_count += 1

    return f"Report boissons gratuites : {created_count} entrée(s) créée(s) pour le {tomorrow}"


@app.task(bind=True, max_retries=3)
def task_envoyer_email_bienvenue_entreprise(self, entreprise_id, password):
    # Imports locaux à l'intérieur de la tâche
    from btl.models import Entreprise
    from btl.services.email_service import envoyer_email_bienvenue_entreprise
    
    try:
        entreprise = Entreprise.objects.get(id=entreprise_id)
        envoyer_email_bienvenue_entreprise(entreprise, password)
    except Exception as exc:
        raise self.retry(exc=exc, countdown=60)

@app.task(bind=True, max_retries=3)
def task_envoyer_email_credentials_terrain(self, user_id, password):
    # Imports locaux à l'intérieur de la tâche
    from btl.models import RemoteUser
    from btl.services.email_service import envoyer_email_credentials_terrain
    
    try:
        user = RemoteUser.objects.get(id=user_id)
        envoyer_email_credentials_terrain(user, password)
    except Exception as exc:
        raise self.retry(exc=exc, countdown=60)
