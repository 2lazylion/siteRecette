from django import forms
from django.contrib.auth import authenticate, login
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.core import validators

class LoginForm(forms.Form):
    username = forms.CharField(widget = forms.TextInput(attrs = {'placeholder': "Entrer votre nom d'utilisateur"}) )
    password = forms.CharField(widget = forms.PasswordInput(attrs = {'placeholder': "Entrer votre mot de passe"}))

class RegisterForm(UserCreationForm):
    
    class Meta:
        model = User
        fields = ["username", "password1", "password2"]
