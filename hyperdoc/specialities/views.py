from django.shortcuts import render
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponseRedirect
from persons.models import Person
from locations.models import Locality
from locations.models import City
from contacts.forms import BookServiceForm
from contacts.models import BookService

def speciality(request, id, string, id_var):

    serviceneeds = Person.objects.filter(specialist=id)
    doctors = Person.objects.all().filter(status=1, specialist=id, city=id_var)
    specialist = Person.objects.all().filter(status=1, specialist=id, city=id_var)[:1]
    currenturl = request.get_full_path()

    return render_to_response('specialty.html', { 'specialist': specialist, 'doctors': doctors, 'serviceneeds': serviceneeds, 'currenturl': currenturl}, context_instance=RequestContext(request))

def specialitydetail(request, id, string, variable_name, id_var):

    serviceneeds = Person.objects.filter(specialist=id)
    doctors = Person.objects.all().filter(status=1, city=id_var)
    services = Person.objects.filter(tag=variable_name)
    localities = Locality.objects.all().filter(status=1).order_by('-locality_score')[:5]
    cities = City.objects.all().filter(status=1).order_by('-city_score')[:1]
    currenturl = request.get_full_path()

    if request.method == 'POST':
        form = BookServiceForm(request.POST)

        if form.is_valid():
            obj = BookService()
            obj.name = form.cleaned_data['name']
            obj.email = form.cleaned_data['email']
            obj.current_path = request.get_full_path()
            obj.phone = form.cleaned_data['phone']
            obj.address = form.cleaned_data['address']
            obj.save()
            return HttpResponseRedirect('/thank-you/')

    else:
        form = BookServiceForm()

    return render_to_response('doctordetail.html', { 'doctors': doctors, 'serviceneeds': serviceneeds, 'currenturl': currenturl, 'form': form, 'services':services, 'localities':localities, 'cities':cities}, context_instance=RequestContext(request))


