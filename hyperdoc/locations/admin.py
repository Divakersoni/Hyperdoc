from django.contrib import admin
from locations.models import Country
from locations.models import State
from locations.models import City
from locations.models import Locality

class CountryAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'country_score', 'status', 'added_on')
    list_per_page = 100
    search_fields = ('id', 'name')
    ordering = ['id']
    list_filter = ['status', 'added_on']
    fieldsets = [
        ('Country Name', {'fields': ['name']}),
        ('Country Tag', {'fields': ['tag']}),
        ('Country Image Url', {'fields': ['image_url']}),
        ('Country Image Url', {'fields': ['logo_url']}),
        ('Country Score', {'fields': ['country_score']}),
        ('Country Status', {'fields': ['status']}),
        ('Country Date Add', {'fields': ['added_on']}),
    ]

class StateAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'country', 'state_score', 'status', 'added_on')
    list_per_page = 100
    search_fields = ('id', 'name')
    ordering = ['id']
    list_filter = ['name', 'status', 'added_on']
    fieldsets = [
    	('Country Name', {'fields': ['country']}),
        ('State Name', {'fields': ['name']}),
        ('State Tag', {'fields': ['tag']}),
        ('State Image Url', {'fields': ['image_url']}),
        ('State Score', {'fields': ['state_score']}),
        ('State Status', {'fields': ['status']}),
        ('State Date Add', {'fields': ['added_on']}),
    ]

class CityAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'state', 'country', 'city_score', 'status', 'added_on')
    list_per_page = 100
    search_fields = ('id', 'name')
    ordering = ['id']
    list_filter = ['country', 'status', 'added_on']
    fieldsets = [
        ('Country Name', {'fields': ['country']}),
        ('State Name', {'fields': ['state']}),
        ('City Name', {'fields': ['name']}),
        ('City Tag', {'fields': ['tag']}),
        ('City Image Url', {'fields': ['image_url']}),
        ('City Score', {'fields': ['city_score']}),
        ('City Status', {'fields': ['status']}),
        ('City Date Add', {'fields': ['added_on']}),
    ]

class LocalityAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'city', 'state', 'country', 'locality_score', 'status', 'added_on')
    list_per_page = 100
    search_fields = ('id', 'name')
    ordering = ['id']
    list_filter = ['status', 'added_on']
    fieldsets = [
        ('Country Name', {'fields': ['country']}),
        ('State Name', {'fields': ['state']}),
        ('City Name', {'fields': ['city']}),
        ('Locality Name', {'fields': ['name']}),
        ('Locality Tag', {'fields': ['tag']}),
        ('Locality Image Url', {'fields': ['image_url']}),
        ('Locality Score', {'fields': ['locality_score']}),
        ('Locality Status', {'fields': ['status']}),
        ('Locality Date Add', {'fields': ['added_on']}),
    ]

admin.site.register(Country, CountryAdmin)
admin.site.register(State, StateAdmin)
admin.site.register(City, CityAdmin)
admin.site.register(Locality, LocalityAdmin)