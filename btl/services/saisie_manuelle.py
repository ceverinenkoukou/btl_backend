"""
Résolution de l'hôtesse cible pour une saisie sur le terrain (dégustation,
gain de goodie, gain de promotion).

Permet à un Administrateur ou un Superviseur de saisir une donnée pour le
compte d'une hôtesse (cas où celle-ci a oublié de le faire elle-même), tout
en gardant les hôtesses sur le flux normal (saisie pour elles-mêmes).
"""
from rest_framework.exceptions import PermissionDenied, ValidationError

from btl.models import RemoteUser


def resoudre_hotesse_et_verifier_site(user, site, hotesse_id=None):
    """
    Retourne l'hôtesse pour le compte de qui l'enregistrement est fait,
    après avoir vérifié les droits de `user` sur `site` :

    - Hôtesse     : saisit pour elle-même (hotesse_id ignoré) ; doit être
                    assignée au site.
    - Superviseur : doit fournir hotesse_id ; ne peut saisir que sur un site
                    qu'il supervise ; l'hôtesse doit être assignée à ce site.
    - Admin       : doit fournir hotesse_id ; l'hôtesse doit être assignée
                    à ce site (aucune restriction de site par ailleurs).
    - Autres rôles : refusé.
    """
    if user.role == RemoteUser.Roles.HOTESSES:
        if not site.hotesses.filter(id=user.id).exists():
            raise PermissionDenied("Vous n'êtes pas assignée à ce site.")
        return user

    if user.role not in (RemoteUser.Roles.SUPERVISEUR, RemoteUser.Roles.ADMIN):
        raise PermissionDenied("Vous n'avez pas les droits pour effectuer cette saisie.")

    if user.role == RemoteUser.Roles.SUPERVISEUR and not user.sites_supervises.filter(id=site.id).exists():
        raise PermissionDenied("Vous ne supervisez pas ce site.")

    if not hotesse_id:
        raise ValidationError({"hotesse_id": "Ce champ est requis pour une saisie pour le compte d'une hôtesse."})

    try:
        hotesse = RemoteUser.objects.get(id=hotesse_id, role=RemoteUser.Roles.HOTESSES)
    except RemoteUser.DoesNotExist:
        raise ValidationError({"hotesse_id": "Hôtesse introuvable."})

    if not site.hotesses.filter(id=hotesse.id).exists():
        raise ValidationError({"hotesse_id": "Cette hôtesse n'est pas assignée à ce site."})

    return hotesse
