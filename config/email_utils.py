"""Utilitaires de configuration e-mail (expéditeur, mot de passe SMTP)."""


def normalize_from_email(value: str) -> str:
    """
    Formate l'adresse expéditeur pour Django/SMTP.
    Accepte « Nom <email@domaine> » ou « Nom email@domaine ».
    """
    value = (value or "").strip()
    if not value:
        return "MHedia BTL <no-replyceverineelisee36@gmail.com.com>"
    if "<" in value and ">" in value:
        return value
    if "@" in value:
        local, domain = value.rsplit("@", 1)
        parts = local.rsplit(None, 1)
        if len(parts) == 2 and "@" not in parts[0]:
            return f"{parts[0]} <{parts[1]}@{domain}>"
        return value
    return f"MHedia BTL <{value}>"


def normalize_smtp_password(value: str) -> str:
    """Supprime les espaces (mots de passe d'application Gmail)."""
    return (value or "").replace(" ", "")
