from django.shortcuts import render
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.http import HttpResponseRedirect
from contacts.forms import RegisterForm

def register(request):
    
	if request.method == 'POST':
		form = RegisterForm(request.POST)

		if form.is_valid():
			form.save()
			return HttpResponseRedirect('/thank-you/')
	else:
		form = RegisterForm()

    
	return render_to_response('register.html', { 'form': form}, context_instance=RequestContext(request))

def thankyou(request):

    return render(request, 'thankyou.html', {})