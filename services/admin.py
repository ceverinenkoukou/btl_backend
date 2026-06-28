from django.contrib import admin

from services.models import (
    CampagneService, Service, ObjectifCampagneService,
    Sondage, RecompenseService, GainRecompenseService,
)

admin.site.register(CampagneService)
admin.site.register(Service)
admin.site.register(ObjectifCampagneService)
admin.site.register(Sondage)
admin.site.register(RecompenseService)
admin.site.register(GainRecompenseService)
