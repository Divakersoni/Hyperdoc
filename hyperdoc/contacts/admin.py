from django.contrib import admin
from contacts.models import BookService
from contacts.models import Contact
from contacts.models import Talk
from contacts.models import Social
from contacts.models import Register

class BookServiceAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'email', 'phone', 'added_on')
    list_per_page = 500
    search_fields = ('email', 'name')
    ordering = ['added_on']
    list_filter = ['added_on']
    fieldsets = [
        ('College of Course', {'fields': ['name']}),
        ('Name of Course', {'fields': ['email']}),
        ('Name of Course', {'fields': ['phone']}),
        ('Tag of Course', {'fields': ['city']}),
        ('Name of Course', {'fields': ['locality']}),
        ('Tag of Course', {'fields': ['current_path']}),
        ('Tag of Course', {'fields': ['address']}),
    ]

class ContactAdmin(admin.ModelAdmin):
    fields = ['name', 'email', 'phone', 'current_path', 'subject', 'message']
    search_fields = ('name', 'email')
    list_display = ('id', 'name', 'email', 'subject', 'added_on')
    list_filter = ['added_on']

class TalkAdmin(admin.ModelAdmin):
    fields = ['name', 'email', 'phone', 'current_path']
    search_fields = ('name', 'email')
    list_display = ('id', 'name', 'email', 'phone', 'added_on')
    list_filter = ['added_on']

class SocialAdmin(admin.ModelAdmin):
    list_display = ('id', 'first_social', 'second_social', 'third_social', 'fourth_social', 'fifth_social', 'sixth_social', 'status', 'added_on')
    list_per_page = 100
    search_fields = ('id', 'first_social')
    ordering = ['id']
    list_filter = ['status', 'added_on']
    fieldsets = [
        ('Social Title', {'fields': ['first_social']}),
        ('Social Tag', {'fields': ['first_url']}),
        ('Social Url', {'fields': ['second_social']}),
        ('Social Image Url', {'fields': ['second_url']}),
        ('Social Title', {'fields': ['third_social']}),
        ('Social Tag', {'fields': ['third_url']}),
        ('Social Url', {'fields': ['fourth_social']}),
        ('Social Image Url', {'fields': ['fourth_url']}),
        ('Social Title', {'fields': ['fifth_social']}),
        ('Social Tag', {'fields': ['fifth_url']}),
        ('Social Url', {'fields': ['sixth_social']}),
        ('Social Url', {'fields': ['sixth_url']}),
        ('Social Status', {'fields': ['status']}),
        ('Social Date Add', {'fields': ['added_on']}),
    ]

class RegisterAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'email', 'phone', 'added_on')
    list_per_page = 100
    search_fields = ('id', 'name')
    ordering = ['id']
    list_filter = ['name', 'added_on']
    fieldsets = [
        ('Details of About', {'fields': ['name']}),
        ('Image Url of About', {'fields': ['email']}),
        ('Details of About', {'fields': ['phone']}),
        ('Details of About', {'fields': ['current_path']}),
        ('Details of About', {'fields': ['service']}),
        ('Details of About', {'fields': ['message']}),
    ]


admin.site.register(Register, RegisterAdmin)
admin.site.register(BookService, BookServiceAdmin)
admin.site.register(Contact, ContactAdmin)
admin.site.register(Talk, TalkAdmin)
admin.site.register(Social, SocialAdmin)