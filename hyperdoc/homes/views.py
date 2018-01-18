from django.shortcuts import render
from homes.models import About
from locations.models import City
from specialities.models import Specialty
from persons.models import Person

def home(request):

    cities = City.objects.all().filter(country=1, status=1).order_by('-city_score')
    doctors = Person.objects.filter(status=1, type=5).count()
    specialties = Specialty.objects.all().filter(status=2).order_by('-specialty_score')
    
    ctx = {
        'cities': cities,
        'doctors': doctors,
        'specialties':specialties,
    }

    return render(request, 'index.html', ctx)

def aboutus(request):

    abouts = About.objects.all().filter(status=1).order_by('-score')[:1]
    
    ctx = {
        'abouts': abouts,
    }

    return render(request, 'about-us.html', ctx)

def terms(request):

    abouts = About.objects.all().filter(status=1).order_by('-score')[:1]
    
    ctx = {
        'abouts': abouts,
    }

    return render(request, 'terms.html', ctx)

def privacy(request):

    abouts = About.objects.all().filter(status=1).order_by('-score')[:1]
    
    ctx = {
        'abouts': abouts,
    }

    return render(request, 'privacy.html', ctx)

def cancellation(request):

    abouts = About.objects.all().filter(status=1).order_by('-score')[:1]
    
    ctx = {
        'abouts': abouts,
    }

    return render(request, 'cancellation.html', ctx)

def press(request):

    abouts = About.objects.all().filter(status=1).order_by('-score')[:1]
    
    ctx = {
        'abouts': abouts,
    }

    return render(request, 'press.html', ctx)

def faqs(request):

    abouts = About.objects.all().filter(status=1).order_by('-score')[:1]
    
    ctx = {
        'abouts': abouts,
    }

    return render(request, 'faqs.html', ctx)

def videos(request):

    abouts = About.objects.all().filter(status=1).order_by('-score')[:1]
    
    ctx = {
        'abouts': abouts,
    }

    return render(request, 'videos.html', ctx)

def galleries(request):

    abouts = About.objects.all().filter(status=1).order_by('-score')[:1]
    
    ctx = {
        'abouts': abouts,
    }

    return render(request, 'galleries.html', ctx)