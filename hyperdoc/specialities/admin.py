from django.contrib import admin
from specialities.models import Specialty

class SpecialtyAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'specialty_score', 'status', 'added_on')
    list_per_page = 100
    search_fields = ('id', 'name')
    ordering = ['id']
    list_filter = ['name', 'status', 'added_on']
    fieldsets = [
        ('Details of About', {'fields': ['name']}),
        ('Details of About', {'fields': ['tag']}),
        ('Image Url of About', {'fields': ['about']}),
        ('Image Url of About', {'fields': ['image_url']}),
        ('Image Url of About', {'fields': ['specialty_score']}),
        ('Status of About', {'fields': ['status']}),
        ('Date add of About', {'fields': ['added_on']}),
    ]

admin.site.register(Specialty, SpecialtyAdmin)

