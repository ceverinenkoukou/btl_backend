import os
from pathlib import Path
from datetime import timedelta
from decouple import config
import dj_database_url




# Correction de l'import pour être robuste sur Vercel
try:
    from .email_utils import normalize_from_email, normalize_smtp_password
except ImportError:
    # Solution de repli si le fichier ne se charge pas correctement sur Vercel
    def normalize_from_email(val): return val
    def normalize_smtp_password(val): return val




BASE_DIR = Path(__file__).resolve().parent.parent

SECRET_KEY = config('SECRET_KEY', default='django-insecure-w6us803%w)$3j9j2m402&@8l3e3j=_8lk87z*_i6n4go*pwuvc')

DEBUG = config('DEBUG', default=True, cast=bool)

ALLOWED_HOSTS = config('ALLOWED_HOSTS', default='localhost,127.0.0.1', cast=lambda v: [s.strip() for s in v.split(',')])

AUTH_USER_MODEL = 'btl.RemoteUser'

INSTALLED_APPS = [
    "corsheaders",
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    # Third-party
   
    "rest_framework",
    "rest_framework_simplejwt",
    "rest_framework_simplejwt.token_blacklist",
    "simple_history",
    # Local
    "btl.core",
    "btl",
]

MIDDLEWARE = [
    "corsheaders.middleware.CorsMiddleware",
    "django.middleware.security.SecurityMiddleware",
    "corsheaders.middleware.CorsMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
    "simple_history.middleware.HistoryRequestMiddleware",
    "whitenoise.middleware.WhiteNoiseMiddleware",
]

ROOT_URLCONF = "config.urls"

TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [BASE_DIR / "templates"],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    },
]

WSGI_APPLICATION = "config.wsgi.application"

DATABASES = {
    'default': dj_database_url.config(
        # Si DATABASE_URL est vide (comme en local), on reconstruit l'accès avec les variables séparées
        default=f"postgres://{os.getenv('POSTGRES_USER', 'postgres')}:{os.getenv('POSTGRES_PASSWORD', 'postgres')}@{os.getenv('POSTGRES_HOST', 'localhost')}:{os.getenv('POSTGRES_PORT', '5432')}/{os.getenv('POSTGRES_DB', 'btl_db')}",
        conn_max_age=600,
        ssl_require=not os.getenv('DEBUG', 'False') == 'True' # Active SSL uniquement en production (sur Railway)
    )
}

AUTH_PASSWORD_VALIDATORS = [
    {"NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator"},
    {"NAME": "django.contrib.auth.password_validation.MinimumLengthValidator"},
    {"NAME": "django.contrib.auth.password_validation.CommonPasswordValidator"},
    {"NAME": "django.contrib.auth.password_validation.NumericPasswordValidator"},
]

LANGUAGE_CODE = "fr-fr"
TIME_ZONE = "Africa/Libreville"
USE_I18N = True
USE_TZ = True

STATIC_URL = "static/"
DEFAULT_AUTO_FIELD = "django.db.models.BigAutoField"

# --- Django REST Framework ---
REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': (
        'rest_framework_simplejwt.authentication.JWTAuthentication',
    ),
    'DEFAULT_PERMISSION_CLASSES': (
        'rest_framework.permissions.IsAuthenticated',
    ),
    'DEFAULT_PAGINATION_CLASS': None,
}

# --- Simple JWT ---
SIMPLE_JWT = {
    'ACCESS_TOKEN_LIFETIME': timedelta(hours=8),
    'REFRESH_TOKEN_LIFETIME': timedelta(days=7),
    'ROTATE_REFRESH_TOKENS': True,
    'BLACKLIST_AFTER_ROTATION': True,
    'AUTH_HEADER_TYPES': ('Bearer',),
    'USER_ID_FIELD': 'id',
    'USER_ID_CLAIM': 'user_id',
    
    # AJOUTER CETTE CONFIGURATION POUR LIRE VOS CLÉS RSA depuis les variables d'environnement
    'ALGORITHM': 'RS256',  # Indique l'utilisation de vos clés RSA
    'PRIVATE_KEY': config('JWT_PRIVATE_KEY', default='').replace(r'\n', '\n'),
    'PUBLIC_KEY': config('JWT_PUBLIC_KEY', default='').replace(r'\n', '\n'),
}

# --- CORS ---
CORS_ALLOWED_ORIGINS = config(
    'CORS_ALLOWED_ORIGINS',
    default='http://localhost:3000,http://127.0.0.1:3000,https://btl-frontend.vercel.app',
    cast=lambda v: [s.strip() for s in v.split(',')]
)
CORS_ALLOW_CREDENTIALS = True

CORS_ALLOW_HEADERS = [
    'accept',
    'accept-encoding',
    'authorization',
    'content-type',
    'dnt',
    'origin',
    'user-agent',
    'x-csrftoken',
    'x-requested-with',
]

# --- Configuration Email ---

EMAIL_BACKEND = config('EMAIL_BACKEND', default='django.core.mail.backends.console.EmailBackend')

if config('GMAIL_SMTP_USER', default=''):
    EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
    EMAIL_HOST = 'smtp.gmail.com'
    EMAIL_PORT = 587
    EMAIL_USE_TLS = True
    EMAIL_HOST_USER = config('GMAIL_SMTP_USER')
    EMAIL_HOST_PASSWORD = config('GMAIL_SMTP_PASSWORD')

# MODIFICATION ICI : On utilise la variable du .env, et on change la valeur par défaut au cas où
DEFAULT_FROM_EMAIL = normalize_from_email(
    config('DEFAULT_FROM_EMAIL', default='MHédia BTL <votre_adresse_perso@gmail.com>')
)

FRONTEND_URL = config('FRONTEND_URL', default='http://localhost:3000')

# SÉCURITÉ : Supprimez la deuxième ligne EMAIL_TIMEOUT qui fait doublon tout en bas
EMAIL_TIMEOUT = config('EMAIL_TIMEOUT', default=10, cast=int)
