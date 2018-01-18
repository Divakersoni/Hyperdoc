from django.db import models

class Specialty(models.Model):

    STATUS_INACTIVE = 0
    STATUS_ACTIVE = 1
    STATUS_DOCTOR  = 2 
    
    STATUS_CHOICES = (
        (STATUS_INACTIVE, 'Inactive'),
        (STATUS_ACTIVE, 'Active'),
        (STATUS_DOCTOR, 'Doctor')
    )

    name =  models.CharField(max_length=100)
    tag =  models.CharField(max_length=100)
    about = models.TextField(null=True, blank=True)
    image_url = models.CharField(max_length=200, blank=True, default="")
    specialty_score = models.PositiveSmallIntegerField(default=0)
    status = models.SmallIntegerField(choices=STATUS_CHOICES, default=STATUS_ACTIVE)
    added_on = models.DateTimeField('date added')
    
    def __unicode__(self):
        return '%s' % (self.name)

