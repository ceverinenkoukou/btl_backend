from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from btl.models import RemoteUser, Entreprise, Campagne, Site, Produit, Goodie, StockGoodieSite, Degustation, Vente, Promotion, GainGoodie


@admin.register(RemoteUser)
class RemoteUserAdmin(UserAdmin):
    list_display = ('email', 'name', 'role', 'is_active', 'is_password_changed', 'created_at')
    list_filter = ('role', 'is_active', 'is_password_changed')
    search_fields = ('email', 'name')
    ordering = ('-created_at',)
    fieldsets = (
        (None, {'fields': ('email', 'password')}),
        ('Informations personnelles', {'fields': ('name', 'username')}),
        ('Rôle & Statut', {'fields': ('role', 'is_active', 'is_staff', 'is_password_changed')}),
        ('Permissions', {'fields': ('is_superuser', 'groups', 'user_permissions')}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('email', 'name', 'role', 'password1', 'password2'),
        }),
    )


@admin.register(Entreprise)
class EntrepriseAdmin(admin.ModelAdmin):
    list_display = ('nom_commercial', 'get_email', 'telephone', 'created_at')
    search_fields = ('nom_commercial', 'user__email')

    def get_email(self, obj):
        return obj.user.email
    get_email.short_description = 'Email'


@admin.register(Campagne)
class CampagneAdmin(admin.ModelAdmin):
    list_display = ('nom', 'entreprise', 'date_debut', 'date_fin', 'created_at')
    list_filter = ('entreprise',)
    search_fields = ('nom', 'entreprise__nom_commercial')
    filter_horizontal = ('superviseurs', 'hotesses', 'produits')


@admin.register(Site)
class SiteAdmin(admin.ModelAdmin):
    list_display = ('nom', 'ville', 'campagne', 'created_at')
    list_filter = ('ville', 'campagne__entreprise')
    search_fields = ('nom', 'campagne__nom')
    filter_horizontal = ('superviseurs', 'hotesses')


@admin.register(Produit)
class ProduitAdmin(admin.ModelAdmin):
    list_display = ('nom', 'entreprise', 'prix_indicatif')
    search_fields = ('nom', 'entreprise__nom_commercial')


@admin.register(Goodie)
class GoodieAdmin(admin.ModelAdmin):
    list_display = ('nom', 'entreprise', 'campagne', 'produit_associe', 'quantite_produit_associe')
    search_fields = ('nom', 'entreprise__nom_commercial', 'campagne__nom')
    list_filter = ('campagne', 'entreprise')
    fields = ('nom', 'description', 'entreprise', 'campagne', 'produit_associe', 'quantite_produit_associe')


@admin.register(StockGoodieSite)
class StockGoodieSiteAdmin(admin.ModelAdmin):
    list_display = ('goodie', 'site', 'quantite_initiale', 'quantite_restante')


@admin.register(Degustation)
class DegustationAdmin(admin.ModelAdmin):
    list_display = ('produit', 'hotesse', 'site', 'note_gout', 'intention_achat', 'a_achete', 'created_at')
    list_filter = ('intention_achat', 'a_achete', 'tranche_age')
    search_fields = ('hotesse__name', 'produit__nom', 'site__nom')


@admin.register(Vente)
class VenteAdmin(admin.ModelAdmin):
    list_display = ('produit', 'hotesse', 'site', 'conditionnement', 'quantite', 'created_at')
    list_filter = ('conditionnement',)


@admin.register(Promotion)
class PromotionAdmin(admin.ModelAdmin):
    list_display = ('campagne', 'type_promotion', 'quantite_requise', 'recompense_description', 'is_active')
    list_filter = ('campagne', 'type_promotion', 'is_active')
    search_fields = ('campagne__nom', 'recompense_description')
    fields = ('campagne', 'type_promotion', 'quantite_requise', 'recompense_description', 'is_active')


@admin.register(GainGoodie)
class GainGoodieAdmin(admin.ModelAdmin):
    list_display = ('goodie', 'site', 'hotesse', 'produit_associe', 'nom_client', 'created_at')
    list_filter = ('site__campagne', 'created_at')
    search_fields = ('goodie__nom', 'site__nom', 'hotesse__name', 'hotesse__email', 'nom_client')
    readonly_fields = ('created_at', 'id')
    fields = ('site', 'goodie', 'hotesse', 'produit_associe', 'quantite_produit', 'nom_client', 'degustation', 'promotion', 'created_at', 'id')
