from django.db import models

class Country(models.Model):

    STATUS_INACTIVE = 0
    STATUS_ACTIVE = 1

    STATUS_CHOICES = (
        (STATUS_INACTIVE, 'Inactive'),
        (STATUS_ACTIVE, 'Active')
    )

    name = models.CharField(max_length=100)
    tag = models.CharField(max_length=200)
    image_url = models.CharField(max_length=200, blank=True, default="")
    logo_url = models.CharField(max_length=200, blank=True, default="")
    country_score = models.PositiveSmallIntegerField(default=0)
    status = models.SmallIntegerField(choices=STATUS_CHOICES, default=STATUS_ACTIVE)
    added_on = models.DateTimeField('date added')

    def __unicode__(self):
        return '%s' % (self.name)

class State(models.Model):

    STATUS_INACTIVE = 0
    STATUS_ACTIVE = 1

    STATUS_CHOICES = (
        (STATUS_INACTIVE, 'Inactive'),
        (STATUS_ACTIVE, 'Active')
    )

    country = models.ForeignKey(Country)
    name = models.CharField(max_length=100)
    tag = models.CharField(max_length=200, null=True, blank=True)
    image_url = models.CharField(max_length=200, blank=True, default="")
    state_score = models.PositiveSmallIntegerField(default=0)
    status = models.SmallIntegerField(choices=STATUS_CHOICES, default=STATUS_ACTIVE)
    added_on = models.DateTimeField('date added')

    def __unicode__(self):
        return '%s' % (self.name)

class City(models.Model):

    STATUS_INACTIVE = 0
    STATUS_ACTIVE = 1

    STATUS_CHOICES = (
        (STATUS_INACTIVE, 'Inactive'),
        (STATUS_ACTIVE, 'Active')
    )

    country = models.ForeignKey(Country)
    state = models.ForeignKey(State)
    name = models.CharField(max_length=100)
    tag = models.CharField(max_length=200, null=True, blank=True)
    image_url = models.CharField(max_length=200, blank=True, default="")
    city_score = models.PositiveSmallIntegerField(default=0)
    status = models.SmallIntegerField(choices=STATUS_CHOICES, default=STATUS_ACTIVE)
    added_on = models.DateTimeField('date added')

    def __unicode__(self):
        return '%s' % (self.name)

class Locality(models.Model):

    STATUS_INACTIVE = 0
    STATUS_ACTIVE = 1

    STATUS_CHOICES = (
        (STATUS_INACTIVE, 'Inactive'),
        (STATUS_ACTIVE, 'Active')
    )

    country = models.ForeignKey(Country)
    state = models.ForeignKey(State)
    city = models.ForeignKey(City)
    name = models.CharField(max_length=100)
    tag = models.CharField(max_length=200, null=True, blank=True)
    image_url = models.CharField(max_length=200, blank=True, default="")
    locality_score = models.PositiveSmallIntegerField(default=0)
    status = models.SmallIntegerField(choices=STATUS_CHOICES, default=STATUS_ACTIVE)
    added_on = models.DateTimeField('date added')

    def __unicode__(self):
        return '%s' % (self.name)
