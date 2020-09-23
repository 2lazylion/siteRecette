from django import forms
from django.contrib.auth import authenticate, login
from django.core import validators

class Login(forms.Form):
    username = forms.CharField(widget = forms.TextInput(attrs = {'placeholder': "Entrer votre nom d'utilisateur"}) )
    password = forms.CharField(widget = forms.PasswordInput)