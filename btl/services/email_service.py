import logging
import secrets
import string
from django.core.mail import send_mail
from django.conf import settings

logger = logging.getLogger(__name__)


def generer_mot_de_passe_provisoire(longueur=12):
    """
    Génère un mot de passe sécurisé contenant lettres, chiffres et symboles.
    Utilise le module `secrets` pour une génération cryptographiquement sûre.
    """
    alphabet = string.ascii_letters + string.digits + "!@#$%^&*"
    while True:
        password = ''.join(secrets.choice(alphabet) for _ in range(longueur))
        # Garantit au moins 1 chiffre, 1 majuscule, 1 minuscule, 1 symbole
        if (
            any(c.islower() for c in password)
            and any(c.isupper() for c in password)
            and any(c.isdigit() for c in password)
            and any(c in "!@#$%^&*" for c in password)
        ):
            return password


def envoyer_email_bienvenue_entreprise(entreprise, mot_de_passe_provisoire):
    """
    Envoie à l'entreprise un email de bienvenue avec ses identifiants provisoires.
    Le mot de passe en clair est transmis UNE SEULE FOIS ici, puis haché en base.
    """
    sujet = f"Bienvenue sur MHedia BTL – Vos identifiants de connexion"
    message = f"""
Bonjour {entreprise.nom_commercial},

Votre compte a été créé sur la plateforme MHedia BTL.

Voici vos identifiants de connexion provisoires :

  Adresse e-mail : {entreprise.user.email}
  Mot de passe   : {mot_de_passe_provisoire}

Pour des raisons de sécurité, vous devrez changer ce mot de passe lors de votre première connexion.

Accédez à la plateforme ici : {settings.FRONTEND_URL}

Si vous n'êtes pas à l'origine de cette demande, ignorez cet e-mail ou contactez notre support.

Cordialement,
L'équipe MHedia BTL
""".strip()

    _envoyer_email(sujet, message, [entreprise.user.email])


def envoyer_email_assignation_campagne(utilisateur, campagne, sites):
    """
    Notifie une hôtesse ou un superviseur de son assignation à une campagne.
    Inclut les détails de la campagne, les sites concernés et ses identifiants.
    `sites` : QuerySet ou liste d'objets Site liés à cet utilisateur dans cette campagne.
    """
    role_label = utilisateur.get_role_display()
    sites_info = "\n".join(
        f"  - {site.nom} ({site.ville}){' — ' + site.emplacement_precis if site.emplacement_precis else ''}"
        for site in sites
    ) or "  (aucun site spécifique pour l'instant)"

    sujet = f"[MHedia BTL] Nouvelle assignation – Campagne : {campagne.nom}"
    message = f"""
Bonjour {utilisateur.name},

Vous avez été assigné(e) en tant que {role_label} à la campagne suivante :

  Campagne    : {campagne.nom}
  Entreprise  : {campagne.entreprise.nom_commercial}
  Période     : du {campagne.date_debut.strftime('%d/%m/%Y')} au {campagne.date_fin.strftime('%d/%m/%Y')}
  Description : {campagne.description or 'N/A'}

Sites sur lesquels vous intervenez :
{sites_info}

Vos identifiants de connexion :

  Adresse e-mail : {utilisateur.email}
  Mot de passe   : (celui qui vous a été communiqué lors de la création de votre compte)

Accédez à l'application terrain ici : {settings.FRONTEND_URL}

En cas de problème de connexion, contactez votre administrateur.

Cordialement,
L'équipe MHedia BTL
""".strip()

    _envoyer_email(sujet, message, [utilisateur.email])


def envoyer_email_credentials_terrain(utilisateur, mot_de_passe_provisoire):
    """
    Envoie à une hôtesse ou un superviseur ses identifiants de connexion
    lors de la création de son compte (avant assignation à une campagne).
    """
    role_label = utilisateur.get_role_display()
    sujet = f"[MHedia BTL] Création de votre compte {role_label}"
    message = f"""
Bonjour {utilisateur.name},

Votre compte {role_label} a été créé sur la plateforme MHedia BTL.

Vos identifiants de connexion provisoires :

  Adresse e-mail : {utilisateur.email}
  Mot de passe   : {mot_de_passe_provisoire}

Vous devrez changer ce mot de passe lors de votre première connexion.

# Accédez à l'application ici : {settings.FRONTEND_URL}

Cordialement,
L'équipe MHedia BTL
""".strip()

    _envoyer_email(sujet, message, [utilisateur.email])


def _envoyer_email(sujet: str, message: str, destinataires: list[str]) -> None:
    """Envoie un e-mail texte ; lève l'exception SMTP en cas d'échec."""
    logger.info(
        "Envoi e-mail « %s » à %s via %s",
        sujet,
        ", ".join(destinataires),
        settings.EMAIL_BACKEND,
    )
    send_mail(
        subject=sujet,
        message=message,
        from_email=settings.DEFAULT_FROM_EMAIL,
        recipient_list=destinataires,
        fail_silently=False,
    )
    logger.info("E-mail envoyé à %s", ", ".join(destinataires))
