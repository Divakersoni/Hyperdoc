from django.shortcuts import render
from persons.models import Person

def advisory(request):

    advisories = Person.objects.filter(status=1, type=9).order_by('-person_score')
    
    ctx = {
        'advisories': advisories,
    }

    return render(request, 'advisory.html', ctx)

def development(request):

    developments = Person.objects.filter(status=1, type=6).order_by('-person_score')
    
    ctx = {
        'developments': developments,
    }

    return render(request, 'development.html', ctx)

def medical(request):

    developments = Person.objects.filter(status=1, type=7).order_by('-person_score')
    
    ctx = {
        'developments': developments,
    }

    return render(request, 'medical.html', ctx)

def management(request):

    developments = Person.objects.filter(status=1, type=8).order_by('-person_score')
    
    ctx = {
        'developments': developments,
    }

    return render(request, 'management.html', ctx)