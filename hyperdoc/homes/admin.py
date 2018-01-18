from django.contrib import admin
from homes.models import About

class AboutAdmin(admin.ModelAdmin):
    list_display = ('id', 'about', 'status', 'added_on')
    list_per_page = 100
    search_fields = ('id', 'short_desc', 'mission')
    ordering = ['id']
    list_filter = ['status', 'added_on']
    fieldsets = [
        ('Short Description', {'fields': ['short_desc']}),
        ('About Us', {'fields': ['about']}),
        ('Image Url', {'fields': ['image_url']}),
        ('Mission', {'fields': ['mission']}),
        ('Vision', {'fields': ['vision']}),
        ('Helps', {'fields': ['helps']}),
        ('Score', {'fields': ['score']}),
        ('Status', {'fields': ['status']}),
        ('Date add', {'fields': ['added_on']}),
    ]

admin.site.register(About, AboutAdmin)
admin.site.disable_action('delete_selected')