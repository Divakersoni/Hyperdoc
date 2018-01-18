from django.db import models
from phonenumber_field.modelfields import PhoneNumberField

class BookService(models.Model):
    name = models.CharField(max_length=255)
    email = models.EmailField()
    phone = PhoneNumberField()
    city = models.CharField(max_length=255)
    locality = models.CharField(max_length=255)
    current_path = models.CharField(max_length=255)
    address = models.TextField()
    added_on = models.DateTimeField(auto_now_add=True)

class Contact(models.Model):
    name = models.CharField(max_length=255, null=True)
    email = models.EmailField()
    phone = PhoneNumberField()
    current_path = models.CharField(max_length=255)
    subject = models.CharField(max_length=255, null=True)
    message = models.TextField()
    added_on = models.DateTimeField(auto_now_add=True)

class Talk(models.Model):
    name = models.CharField(max_length=255, null=True)
    email = models.EmailField()
    phone = PhoneNumberField()
    current_path = models.CharField(max_length=255)
    added_on = models.DateTimeField(auto_now_add=True)

class Social(models.Model):

    STATUS_INACTIVE = 0
    STATUS_ACTIVE = 1

    STATUS_CHOICES = (
        (STATUS_INACTIVE, 'Inactive'),
        (STATUS_ACTIVE, 'Active')
    )

    first_social =  models.CharField(max_length=200, null=True, blank=True)
    first_url =  models.CharField(max_length=200, null=True, blank=True)
    second_social =  models.CharField(max_length=200, null=True, blank=True)
    second_url =  models.CharField(max_length=200, null=True, blank=True)
    third_social =  models.CharField(max_length=200, null=True, blank=True)
    third_url =  models.CharField(max_length=200, null=True, blank=True)
    fourth_social =  models.CharField(max_length=200, null=True, blank=True)
    fourth_url =  models.CharField(max_length=200, null=True, blank=True)
    fifth_social =  models.CharField(max_length=200, null=True, blank=True)
    fifth_url =  models.CharField(max_length=200, null=True, blank=True)
    sixth_social =  models.CharField(max_length=200, null=True, blank=True)
    sixth_url =  models.CharField(max_length=200, null=True, blank=True)
    status = models.SmallIntegerField(choices=STATUS_CHOICES, default=STATUS_ACTIVE)
    added_on = models.DateTimeField('date added')

    def __unicode__(self):
        return '%s (%s)' % (self.first_social, self.get_status_display())

class Register(models.Model):
    name = models.CharField(max_length=255, null=True)
    email = models.EmailField()
    phone = PhoneNumberField()
    current_path = models.CharField(max_length=255)
    service = models.CharField(max_length=255, null=True)
    message = models.TextField()
    added_on = models.DateTimeField(auto_now_add=True)
