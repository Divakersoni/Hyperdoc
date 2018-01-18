from django.db import models

class About(models.Model):

    STATUS_INACTIVE = 0
    STATUS_ACTIVE = 1

    STATUS_CHOICES = (
        (STATUS_INACTIVE, 'Inactive'),
        (STATUS_ACTIVE, 'Active')
    )

    short_desc = models.TextField(blank=True, default="")
    about = models.TextField()
    image_url = models.CharField(max_length=200, blank=True, default="")
    mission = models.TextField(blank=True, default="")
    vision = models.TextField(blank=True, default="")
    helps = models.TextField(blank=True, default="")
    score = models.PositiveSmallIntegerField(default=0)
    status = models.SmallIntegerField(choices=STATUS_CHOICES, default=STATUS_ACTIVE)
    added_on = models.DateTimeField('date added')

    def __unicode__(self):
        return '%s (%s)' % (self.about, self.get_status_display())