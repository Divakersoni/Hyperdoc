from django import forms
from contacts.models import BookService
from contacts.models import Contact
from contacts.models import Talk
from contacts.models import Register
from django.core.validators import MinLengthValidator
from django.forms import ModelForm


class BookServiceForm(forms.ModelForm):

    def __init__(self, *args, **kwargs):
        super(BookServiceForm, self).__init__(*args, **kwargs)
        self.fields["name"].min_length = 2
        self.fields["name"].validators.append(MinLengthValidator)

    class Meta:

        model = BookService
        exclude = ('city', 'locality', 'current_path', 'added_on',)
        widgets = {
            'name': forms.TextInput(attrs={'placeholder': ''}),
            'email' : forms.TextInput(attrs={'placeholder': ''}),
            'phone' : forms.TextInput(attrs={'placeholder': '+919799644578 '}),
            'address': forms.Textarea(attrs={'placeholder': '4A, Bajrang Colony, Jagatpura, Jaipur-302017, Rajasthan'}),
        }

class ContactForm(forms.ModelForm):

    def __init__(self, *args, **kwargs):
        super(ContactForm, self).__init__(*args, **kwargs)
        self.fields["name"].min_length = 255
        self.fields["name"].validators.append(MinLengthValidator)

    class Meta:

        model = Contact
        exclude = ('phone', 'current_path', 'added_on',)
        widgets = {
            'name': forms.TextInput(attrs={'placeholder': 'Save Your Health'}),
            'email' : forms.TextInput(attrs={'placeholder': 'healthsaveyour@gmail.com'}),
            'subject' : forms.TextInput(attrs={'placeholder': 'query'}),
            'message': forms.Textarea(attrs={'placeholder': 'Hi, Save Your Health..'}),
        }

class TalkForm(forms.ModelForm):

    def __init__(self, *args, **kwargs):
        super(TalkForm, self).__init__(*args, **kwargs)
        self.fields["name"].min_length = 255
        self.fields["name"].validators.append(MinLengthValidator)

    class Meta:

        model = Talk
        exclude = ('current_path', 'added_on',)
        widgets = {
            'name': forms.TextInput(attrs={'placeholder': 'Save Your Health'}),
            'email' : forms.TextInput(attrs={'placeholder': 'healthsaveyour@gmail.com'}),
            'phone' : forms.TextInput(attrs={'placeholder': '+919799644578 '}),
        }

class RegisterForm(forms.ModelForm):

    def __init__(self, *args, **kwargs):
        super(RegisterForm, self).__init__(*args, **kwargs)
        self.fields["name"].min_length = 255
        self.fields["name"].validators.append(MinLengthValidator)

    class Meta:

        model = Register
        exclude = ('current_path', 'added_on',)
        widgets = {
            'name': forms.TextInput(attrs={'placeholder': ''}),
            'service' : forms.TextInput(attrs={'placeholder': ''}),
            'email' : forms.TextInput(attrs={'placeholder': ''}),
            'phone' : forms.TextInput(attrs={'placeholder': '+91'}),
            'message': forms.Textarea(attrs={'placeholder': ''}),
        }