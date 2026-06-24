import logging
import secrets
import string
import resend
from django.conf import settings

logger = logging.getLogger(__name__)


def generer_mot_de_passe_provisoire(longueur=12):
    """
    Génère un mot de passe sécurisé contenant lettres, chiffres et symboles.
    """
    alphabet = string.ascii_letters + string.digits + "!@#$%^&*"
    while True:
        password = ''.join(secrets.choice(alphabet) for _ in range(longueur))
        if (
            any(c.islower() for c in password)
            and any(c.isupper() for c in password)
            and any(c.isdigit() for c in password)
            and any(c in "!@#$%^&*" for c in password)
        ):
            return password


def envoyer_email_bienvenue_entreprise(entreprise, mot_de_passe_provisoire):
    sujet = "Bienvenue sur MHedia BTL – Vos identifiants de connexion"
    html = f"""
    <p>Bonjour <strong>{entreprise.nom_commercial}</strong>,</p>
    <p>Votre compte a été créé sur la plateforme MHedia BTL.</p>
    <p>Voici vos identifiants de connexion provisoires :</p>
    <ul>
        <li><strong>Adresse e-mail :</strong> {entreprise.user.email}</li>
        <li><strong>Mot de passe :</strong> {mot_de_passe_provisoire}</li>
    </ul>
    <p>Pour des raisons de sécurité, vous devrez changer ce mot de passe lors de votre première connexion.</p>
    <p><a href="{settings.FRONTEND_URL}">Accéder à la plateforme</a></p>
    <p>Cordialement,<br>L'équipe MHedia BTL</p>
    """
    _envoyer_email(sujet, html, [entreprise.user.email])


def envoyer_email_assignation_campagne(utilisateur, campagne, sites):
    role_label = utilisateur.get_role_display()
    sites_info = "".join(
        f"<li>{site.nom} ({site.ville}){' — ' + site.emplacement_precis if site.emplacement_precis else ''}</li>"
        for site in sites
    ) or "<li>Aucun site spécifique pour l'instant</li>"

    sujet = f"[MHedia BTL] Nouvelle assignation – Campagne : {campagne.nom}"
    html = f"""
    <p>Bonjour <strong>{utilisateur.name}</strong>,</p>
    <p>Vous avez été assigné(e) en tant que <strong>{role_label}</strong> à la campagne suivante :</p>
    <ul>
        <li><strong>Campagne :</strong> {campagne.nom}</li>
        <li><strong>Entreprise :</strong> {campagne.entreprise.nom_commercial}</li>
        <li><strong>Période :</strong> du {campagne.date_debut.strftime('%d/%m/%Y')} au {campagne.date_fin.strftime('%d/%m/%Y')}</li>
        <li><strong>Description :</strong> {campagne.description or 'N/A'}</li>
    </ul>
    <p><strong>Sites sur lesquels vous intervenez :</strong></p>
    <ul>{sites_info}</ul>
    <p><a href="{settings.FRONTEND_URL}">Accéder à l'application</a></p>
    <p>Cordialement,<br>L'équipe MHedia BTL</p>
    """
    _envoyer_email(sujet, html, [utilisateur.email])


def envoyer_email_credentials_terrain(utilisateur, mot_de_passe_provisoire):
    role_label = utilisateur.get_role_display()
    sujet = f"[MHedia BTL] Création de votre compte {role_label}"
    html = f"""
    <p>Bonjour <strong>{utilisateur.name}</strong>,</p>
    <p>Votre compte <strong>{role_label}</strong> a été créé sur la plateforme MHedia BTL.</p>
    <p>Vos identifiants de connexion provisoires :</p>
    <ul>
        <li><strong>Adresse e-mail :</strong> {utilisateur.email}</li>
        <li><strong>Mot de passe :</strong> {mot_de_passe_provisoire}</li>
    </ul>
    <p>Vous devrez changer ce mot de passe lors de votre première connexion.</p>
    <p><a href="{settings.FRONTEND_URL}">Accéder à l'application</a></p>
    <p>Cordialement,<br>L'équipe MHedia BTL</p>
    """
    _envoyer_email(sujet, html, [utilisateur.email])


def _envoyer_email(sujet: str, html: str, destinataires: list[str]) -> None:
    """Envoie un e-mail via Resend API."""
    logger.info("Envoi e-mail « %s » à %s", sujet, ", ".join(destinataires))
    
    resend.api_key = settings.RESEND_API_KEY
    
    resend.Emails.send({
        "from": settings.DEFAULT_FROM_EMAIL,
        "to": destinataires,
        "subject": sujet,
        "html": html,
    })
    
    logger.info("E-mail envoyé à %s", ", ".join(destinataires))
