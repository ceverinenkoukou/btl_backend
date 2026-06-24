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
    from django.db.models import Q
    from btl.models import Site, Degustation, Vente, RapportJournalier, SiteProduitPrix, GainGoodie, Pointage

    target_date = date_type.fromisoformat(date_str) if date_str else date_type.today()

    for site in Site.objects.prefetch_related('hotesses', 'superviseurs', 'campagne').all():
        site_hotesses_count = site.hotesses.count()
        for hotesse in site.hotesses.all():
            nb_deg = Degustation.objects.filter(
                site=site, hotesse=hotesse, created_at__date=target_date
            ).count()

            ventes_qs = Vente.objects.filter(
                site=site, hotesse=hotesse, created_at__date=target_date
            ).select_related('produit')

            nb_ventes = ventes_qs.count()

            ca = Decimal('0')
            for vente in ventes_qs:
                try:
                    prix = SiteProduitPrix.objects.get(site=site, produit=vente.produit).prix
                except SiteProduitPrix.DoesNotExist:
                    prix = vente.produit.prix_indicatif or Decimal('0')
                ca += prix * vente.quantite

            goodies_filter = Q(degustation__hotesse=hotesse)
            if site_hotesses_count == 1:
                goodies_filter |= Q(degustation__isnull=True)

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
