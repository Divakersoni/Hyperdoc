from django.conf.urls import patterns, include, url
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    url(r'^$', 'homes.views.home', name='home'),
    url(r'^home/$', 'homes.views.home', name='home'),
    url(r'^about-us/$', 'homes.views.aboutus', name='aboutus'),
    url(r'^terms-and-conditions/$', 'homes.views.terms', name='terms'),
    url(r'^privacy-policy/$', 'homes.views.privacy', name='privacy'),
    url(r'^cancellation-policy/$', 'homes.views.cancellation', name='cancellation'),
    url(r'^advisory-board/$', 'persons.views.advisory', name='advisory'),
    url(r'^register-its-free/$', 'contacts.views.register', name='register'),
    url(r'^thank-you/$', 'contacts.views.thankyou', name='thankyou'),
    url(r'^development-team/$', 'persons.views.development', name='development'),
    url(r'^medical-team/$', 'persons.views.medical', name='medical'),
    url(r'^management-team/$', 'persons.views.management', name='management'),
    url(r'^media-press/$', 'homes.views.press', name='press'),
    url(r'^health-faqs/$', 'homes.views.faqs', name='faqs'),
    url(r'^health-videos/$', 'homes.views.videos', name='videos'),
    url(r'^our-galleries/$', 'homes.views.galleries', name='galleries'),
    url(r'^(?P<id_var>[0-99]{1,2})/doctors/(?P<id>[0-99]{1,2})/(?P<string>[\w\-]+)/$', 'specialities.views.speciality', name='speciality'),
    url(r'^(?P<id_var>[0-99]{1,2})/doctors/(?P<id>[0-99]{1,2})/(?P<string>[\w\-]+)/(?P<variable_name>[\w\-]+)/$', 'specialities.views.specialitydetail', name='specialitydetail'),
    url(r'^admin/', include(admin.site.urls)),
) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
