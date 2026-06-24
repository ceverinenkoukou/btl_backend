"""
URL configuration for config project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.contrib import admin
from django.urls import path, include
from django.http import JsonResponse
from rest_framework.routers import DefaultRouter
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView, TokenBlacklistView

def health_check(request):
    return JsonResponse({"status": "ok"})

from btl.views.ViewUser import RemoteUserViewSet
from btl.views.ViewCompagny import EntrepriseViewSet
from btl.views.ViewCompaigns import CampagneViewSet
from btl.views.ViewSites import SiteViewSet
from btl.views.ViewTasting import DegustationViewSet
from btl.views.ViewProducts import VenteViewSet
from btl.views.ViewProduits import ProduitViewSet
from btl.views.ViewSetup import SetupAdminView
from btl.views.ViewPromotions import PromotionViewSet
from btl.views.ViewGoodies import GoodieViewSet
from btl.views.ViewGainGoodie import GainGoodieViewSet
from btl.views.ViewGainPromotion import GainPromotionViewSet
from btl.views.ViewObjectifSite import ObjectifSiteViewSet
from btl.views.ViewRapportJournalier import RapportJournalierViewSet
from btl.views.ViewSiteProduitPrix import SiteProduitPrixViewSet
from btl.views.Viewrapportdpdf import RapportPDFViewSet
from btl.views.ViewJourAnimation import JourAnimationViewSet
from btl.views.ViewRapportConfig import RapportConfigViewSet
from btl.views.ViewRapportJournalierConfig import RapportJournalierConfigViewSet
from btl.views.ViewPointage import PointageViewSet
from btl.views.ViewLivraisonGoodiesJour import LivraisonGoodiesJourViewSet

router = DefaultRouter()
router.register(r'users', RemoteUserViewSet, basename='user')
router.register(r'entreprises', EntrepriseViewSet, basename='entreprise')
router.register(r'campagnes', CampagneViewSet, basename='campagne')
router.register(r'sites', SiteViewSet, basename='site')
router.register(r'degustations', DegustationViewSet, basename='degustation')
router.register(r'produits', ProduitViewSet, basename='produit')
router.register(r'ventes', VenteViewSet, basename='vente')
router.register(r'promotions', PromotionViewSet, basename='promotion')
router.register(r'goodies', GoodieViewSet, basename='goodie')
router.register(r'gains-goodies', GainGoodieViewSet, basename='gain-goodie')
router.register(r'gains-promotions', GainPromotionViewSet, basename='gain-promotion')
router.register(r'objectifs-sites', ObjectifSiteViewSet, basename='objectif-site')
router.register(r'rapports-journaliers', RapportJournalierViewSet, basename='rapport-journalier')
router.register(r'prix-sites', SiteProduitPrixViewSet, basename='prix-site')
router.register(r'rapports-pdf', RapportPDFViewSet, basename='rapport-pdf')
router.register(r'jours-animation', JourAnimationViewSet, basename='jour-animation')
router.register(r'rapport-configs', RapportConfigViewSet, basename='rapport-config')
router.register(r'rapport-journalier-configs', RapportJournalierConfigViewSet, basename='rapport-journalier-config')
router.register(r'pointages', PointageViewSet, basename='pointage')
router.register(r'livraisons-goodies', LivraisonGoodiesJourViewSet, basename='livraison-goodie')

urlpatterns = [
    path("admin/", admin.site.urls),
    path("api/btl/health/", health_check, name="health_check"),
    path("api/", include(router.urls)),
    path("api/auth/setup/", SetupAdminView.as_view(), name="setup_admin"),
    path("api/auth/login/", TokenObtainPairView.as_view(), name="token_obtain_pair"),
    path("api/auth/refresh/", TokenRefreshView.as_view(), name="token_refresh"),
    path("api/auth/logout/", TokenBlacklistView.as_view(), name="token_blacklist"),
]
