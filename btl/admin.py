from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.utils.html import format_html
from btl.models import RemoteUser, Entreprise, Campagne, Site, Produit, Goodie, StockGoodieSite, Degustation, Vente, Promotion, GainGoodie, RapportConfig, RapportJournalier, RapportJournalierConfig


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
    list_display = ('nom_commercial', 'get_email', 'telephone', 'get_couleurs', 'get_logo_preview', 'created_at')
    search_fields = ('nom_commercial', 'user__email')
    fieldsets = (
        (None, {'fields': ('user', 'nom_commercial', 'telephone', 'adresse')}),
        ('Branding du rapport (récupéré automatiquement sur chaque campagne)', {
            'fields': ('couleur_primaire', 'couleur_secondaire', 'logo_url', 'get_logo_preview'),
        }),
    )
    readonly_fields = ('get_logo_preview',)

    def get_email(self, obj):
        return obj.user.email
    get_email.short_description = 'Email'

    def get_couleurs(self, obj):
        return format_html(
            '<span style="display:inline-block;width:14px;height:14px;background:{};'
            'border-radius:3px;margin-right:4px;vertical-align:middle;"></span>'
            '<span style="display:inline-block;width:14px;height:14px;background:{};'
            'border-radius:3px;vertical-align:middle;"></span>',
            obj.couleur_primaire, obj.couleur_secondaire,
        )
    get_couleurs.short_description = 'Couleurs'

    def get_logo_preview(self, obj):
        if not obj.logo_url:
            return '—'
        return format_html('<img src="{}" style="height:32px;max-width:100px;object-fit:contain;" />', obj.logo_url)
    get_logo_preview.short_description = 'Logo'


class RapportConfigInline(admin.StackedInline):
    model = RapportConfig
    extra = 0
    max_num = 1
    can_delete = False
    fieldsets = (
        ('En-tête', {
            'fields': ('configure_par', 'titre_personnalise', 'sous_titre_personnalise', 'show_logo'),
        }),
        ('KPIs de synthèse', {
            'fields': (
                'show_kpi_degustations', 'show_kpi_ventes', 'show_kpi_ventes_hors_promo',
                'show_kpi_ca', 'show_kpi_goodies', 'show_kpi_sites',
            ),
        }),
        ('Sections du rapport', {
            'fields': (
                'show_section_offres_promo', 'show_section_gains_goodies',
                'show_section_perf_hotesses', 'show_section_perf_sites',
                'show_section_goodies_par_site', 'show_section_offres_par_hotesse',
                'show_section_detail_degustations', 'show_section_horaires_sites',
                'show_section_stock_boissons', 'show_section_ugs_livraisons',
            ),
        }),
        ('Colonnes des tableaux', {
            'fields': (
                'show_col_ca', 'show_col_goodies',
                'show_col_promo_details', 'show_col_performance',
            ),
        }),
        ('Détail des dégustations (formulaire hôtesse)', {
            'fields': (
                'show_col_nom_client', 'show_col_tranche_age',
                'show_col_intention_achat', 'inclure_notes_sensorielles',
            ),
        }),
        ('Options générales', {
            'fields': ('show_equipe_hotesses',),
        }),
        ('Observations manuelles', {
            'fields': ('show_observations', 'observations_manuelles'),
        }),
    )


class RapportJournalierConfigInline(admin.StackedInline):
    model = RapportJournalierConfig
    extra = 0
    max_num = 1
    can_delete = False
    fieldsets = (
        (None, {'fields': ('configure_par',)}),
        ('Sections du bulletin journalier', {
            'fields': (
                'show_pointage', 'show_stock', 'show_stock_boissons', 'show_boissons_gratuites', 'show_ventes_detail',
                'show_ugs_recus', 'show_ugs_distribues', 'show_ugs_restants',
                'show_degustation', 'show_genre', 'show_personnes_touchees',
                'show_avis_consommateurs', 'show_observation_generale',
            ),
        }),
    )


@admin.register(Campagne)
class CampagneAdmin(admin.ModelAdmin):
    list_display = ('nom', 'entreprise', 'date_debut', 'date_fin', 'created_at')
    list_filter = ('entreprise',)
    search_fields = ('nom', 'entreprise__nom_commercial')
    filter_horizontal = ('superviseurs', 'hotesses', 'produits')
    inlines = (RapportConfigInline, RapportJournalierConfigInline)


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


@admin.register(RapportConfig)
class RapportConfigAdmin(admin.ModelAdmin):
    list_display = ('campagne', 'get_entreprise', 'configure_par', 'titre_personnalise')
    list_filter = ('campagne__entreprise',)
    search_fields = ('campagne__nom', 'campagne__entreprise__nom_commercial', 'titre_personnalise')
    autocomplete_fields = ('campagne',)

    def get_entreprise(self, obj):
        return obj.campagne.entreprise
    get_entreprise.short_description = 'Entreprise'

    fieldsets = (
        (None, {'fields': ('campagne', 'configure_par')}),
        ('En-tête', {
            'fields': ('titre_personnalise', 'sous_titre_personnalise', 'show_logo'),
        }),
        ('KPIs de synthèse', {
            'fields': (
                'show_kpi_degustations', 'show_kpi_ventes', 'show_kpi_ventes_hors_promo',
                'show_kpi_ca', 'show_kpi_goodies', 'show_kpi_sites',
            ),
        }),
        ('Sections du rapport', {
            'fields': (
                'show_section_offres_promo', 'show_section_gains_goodies',
                'show_section_perf_hotesses', 'show_section_perf_sites',
                'show_section_goodies_par_site', 'show_section_offres_par_hotesse',
                'show_section_detail_degustations', 'show_section_horaires_sites',
                'show_section_stock_boissons', 'show_section_ugs_livraisons',
            ),
        }),
        ('Colonnes des tableaux', {
            'fields': (
                'show_col_ca', 'show_col_goodies',
                'show_col_promo_details', 'show_col_performance',
            ),
        }),
        ('Détail des dégustations (formulaire hôtesse)', {
            'fields': (
                'show_col_nom_client', 'show_col_tranche_age',
                'show_col_intention_achat', 'inclure_notes_sensorielles',
            ),
        }),
        ('Options générales', {
            'fields': ('show_equipe_hotesses',),
        }),
        ('Observations manuelles', {
            'fields': ('show_observations', 'observations_manuelles'),
        }),
    )


@admin.register(RapportJournalierConfig)
class RapportJournalierConfigAdmin(admin.ModelAdmin):
    list_display = ('campagne', 'get_entreprise', 'configure_par')
    list_filter = ('campagne__entreprise',)
    search_fields = ('campagne__nom', 'campagne__entreprise__nom_commercial')
    autocomplete_fields = ('campagne',)

    def get_entreprise(self, obj):
        return obj.campagne.entreprise
    get_entreprise.short_description = 'Entreprise'

    fieldsets = (
        (None, {'fields': ('campagne', 'configure_par')}),
        ('Sections du bulletin journalier', {
            'fields': (
                'show_pointage', 'show_stock', 'show_stock_boissons', 'show_boissons_gratuites', 'show_ventes_detail',
                'show_ugs_recus', 'show_ugs_distribues', 'show_ugs_restants',
                'show_degustation', 'show_genre', 'show_personnes_touchees',
                'show_avis_consommateurs', 'show_observation_generale',
            ),
        }),
    )


@admin.register(RapportJournalier)
class RapportJournalierAdmin(admin.ModelAdmin):
    list_display = ('date', 'hotesse', 'site', 'nb_degustations', 'nb_ventes', 'nb_goodies', 'chiffre_affaires')
    list_filter = ('site__campagne', 'date')
    search_fields = ('hotesse__name', 'site__nom')
    date_hierarchy = 'date'
    readonly_fields = ('site', 'hotesse', 'date', 'nb_degustations', 'nb_ventes', 'nb_goodies', 'chiffre_affaires', 'heure_arrivee', 'heure_depart', 'created_at')
    fieldsets = (
        (None, {'fields': ('site', 'hotesse', 'date', 'created_at')}),
        ('Calculé automatiquement', {
            'fields': ('nb_degustations', 'nb_ventes', 'nb_goodies', 'chiffre_affaires', 'heure_arrivee', 'heure_depart'),
        }),
        ('Saisie manuelle', {
            'fields': ('stock_initial_magasin', 'nombre_personnes_touchees', 'avis_consommateurs', 'observation_generale'),
        }),
    )


@admin.register(GainGoodie)
class GainGoodieAdmin(admin.ModelAdmin):
    list_display = ('goodie', 'site', 'hotesse', 'produit_associe', 'nom_client', 'created_at')
    list_filter = ('site__campagne', 'created_at')
    search_fields = ('goodie__nom', 'site__nom', 'hotesse__name', 'hotesse__email', 'nom_client')
    readonly_fields = ('created_at', 'id')
    fields = ('site', 'goodie', 'hotesse', 'produit_associe', 'quantite_produit', 'nom_client', 'degustation', 'promotion', 'created_at', 'id')
