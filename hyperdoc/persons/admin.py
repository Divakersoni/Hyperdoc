from django.contrib import admin
from persons.models import Person

class PersonAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'type', 'locality', 'city', 'state', 'country', 'specialist', 'status', 'added_on')
    list_per_page = 100
    search_fields = ('id', 'type', 'name', 'city')
    ordering = ['id']
    list_filter = ['type', 'locality', 'city', 'state', 'country', 'status', 'added_on']
    fieldsets = [
        ('Details of About', {'fields': ['country']}),
        ('Details of About', {'fields': ['state']}),
        ('Image Url of About', {'fields': ['city']}),
        ('Image Url of About', {'fields': ['locality']}),
        ('Details of About', {'fields': ['type']}),
        ('Details of About', {'fields': ['specialist']}),
        ('Details of About', {'fields': ['name']}),
        ('Image Url of About', {'fields': ['tag']}),
        ('Details of About', {'fields': ['degree']}),
        ('Details of About', {'fields': ['service']}),
        ('Consultation Fee', {'fields': ['consultation_fee']}),
        ('Consultation Off', {'fields': ['consultation_off']}),
        ('Consultation Actual', {'fields': ['consultation_actual']}),
        ('Image Url of About', {'fields': ['appointment_fee']}),
        ('Image Url of About', {'fields': ['appointment_off']}),
        ('Image Url of About', {'fields': ['appointment_actual']}),
        ('Image Url of About', {'fields': ['language']}),
        ('Image Url of About', {'fields': ['position']}),
        ('Image Url of About', {'fields': ['working']}),
        ('Details of About', {'fields': ['institutes']}),
        ('Details of About', {'fields': ['experience']}),
        ('Image Url of About', {'fields': ['about']}),
        ('Image Url of About', {'fields': ['timing']}),
        ('Image Url of About', {'fields': ['image_url']}),
        ('Details of About', {'fields': ['email']}),
        ('Details of About', {'fields': ['phone']}),
        ('Details of About', {'fields': ['address']}),
        ('Details of About', {'fields': ['person_score']}),
        ('Status of About', {'fields': ['first_social']}),
        ('Status of About', {'fields': ['second_social']}),
        ('Status of About', {'fields': ['third_social']}),
        ('Status of About', {'fields': ['fourth_social']}),
        ('Status of About', {'fields': ['fifth_social']}),
        ('Image Url of About', {'fields': ['video_url']}),
        ('Image Url of About', {'fields': ['map_url']}),
        ('Status of About', {'fields': ['status']}),
        ('Date add of About', {'fields': ['added_on']}),
    ]

admin.site.register(Person, PersonAdmin)