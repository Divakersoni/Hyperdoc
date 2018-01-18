from django.db import models
from phonenumber_field.modelfields import PhoneNumberField
from locations.models import Country
from locations.models import State
from locations.models import City
from locations.models import Locality
from specialities.models import Specialty

class Person(models.Model):

    STATUS_INACTIVE = 0
    STATUS_ACTIVE = 1

    STATUS_CHOICES = (
        (STATUS_INACTIVE, 'Inactive'),
        (STATUS_ACTIVE, 'Active')
    )

    TYPE_BOARD = 9
    TYPE_MANAGEMENT = 8
    TYPE_MEDICAL = 7
    TYPE_DEVELOPMENT = 6
    TYPE_DOCTOR = 5
    TYPE_COMPOUNDER = 4
    TYPE_NURSE = 3
    TYPE_TUTOR = 2
    TYPE_YOGA = 1
    TYPE_OTHER = 0

    TYPE_CHOICES = (
        (TYPE_BOARD, 'Advisory Board'),
        (TYPE_MANAGEMENT, 'Management'),
        (TYPE_MEDICAL, 'Medical'),
        (TYPE_DEVELOPMENT, 'Development'),
        (TYPE_DOCTOR, 'Doctor'),
        (TYPE_COMPOUNDER, 'Compounder'),
        (TYPE_NURSE, 'Nurse'),
        (TYPE_TUTOR, 'Tutor'),
        (TYPE_YOGA, 'Yoga'),
        (TYPE_OTHER, 'Other')
    )

    country = models.ForeignKey(Country)
    state = models.ForeignKey(State)
    city = models.ForeignKey(City)
    locality = models.ForeignKey(Locality)
    type = models.SmallIntegerField(choices=TYPE_CHOICES, default=TYPE_OTHER)
    specialist = models.ForeignKey(Specialty)
    name =  models.CharField(max_length=200)
    tag =  models.CharField(max_length=100)
    degree =  models.CharField(max_length=200)
    service = models.CharField(max_length=200)
    consultation_fee = models.PositiveIntegerField(default=0)
    consultation_off = models.PositiveIntegerField(default=0)
    consultation_actual = models.PositiveIntegerField(default=0)
    appointment_fee = models.PositiveIntegerField(default=0)
    appointment_off = models.PositiveIntegerField(default=0)
    appointment_actual = models.PositiveIntegerField(default=0)
    language = models.CharField(max_length=200, blank=True, default="")
    position = models.CharField(max_length=200, blank=True, default="")
    working = models.CharField(max_length=200, blank=True, default="")
    institutes = models.CharField(max_length=200, blank=True, default="")
    experience = models.PositiveIntegerField(default=0)
    about = models.TextField(null=True, blank=True)
    timing = models.TextField(null=True, blank=True)
    image_url = models.CharField(max_length=200, blank=True, default="")
    email = models.EmailField()
    phone = PhoneNumberField()
    address = models.TextField()
    person_score = models.PositiveSmallIntegerField(default=0)
    first_social =  models.CharField(max_length=200, null=True, blank=True)
    second_social =  models.CharField(max_length=200, null=True, blank=True)
    third_social =  models.CharField(max_length=200, null=True, blank=True)
    fourth_social =  models.CharField(max_length=200, null=True, blank=True)
    fifth_social =  models.CharField(max_length=200, null=True, blank=True)
    video_url = models.CharField(max_length=200, blank=True, default="")
    map_url = models.CharField(max_length=200, blank=True, default="")
    status = models.SmallIntegerField(choices=STATUS_CHOICES, default=STATUS_ACTIVE)
    added_on = models.DateTimeField('date added')

    def __unicode__(self):
        return '%s (%s)' % (self.name, self.get_status_display())

