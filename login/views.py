from django.shortcuts import render, redirect
from .forms import *
from django.http import HttpResponse
from django.contrib.auth import authenticate, login, logout as django_logout

# Create your views here.
def loginForm(request):
    # initie le form pour qu'il apparaisse sur la page
    form = LoginForm()
    
    # la première fois qu'on appel la fonction loginForm,
    # la méthode sera 'GET'. Elle va donc render la page
    # avec le form vide. Ensuite, quand l'utilisateur va remplir
    # le formulaire, la requete sera de methode 'POST' et on va traiter 
    # le formulaire.
    if request.method == 'POST':
        
        # l'objet Login doit s'assurer de valider le type des entrées
        form = LoginForm(request.POST)
        if form.is_valid():
            username = form.cleaned_data['username']
            password = form.cleaned_data['password']
            
            # utilise la méthode authenticate du système d'authentification de Django
            user = authenticate(request, username = username, password = password)
            
            # Si user existe, on appel la methode login
            # qui va va aussi mettre le user dans la session
            # et le rediriger vers sa page d'acceuil
            # ensuite, on le redirect vers la page d'acceuil
            if user:
                login(request, user) 
                return render(request,'templates/home.html',)
    
    # render la page login pour la premiere fois ou si les autres
    # if foire, on va renvoyer la request et le form mal rempli à l'usager 
    return render(request, 'templates/login.html', {'form': form})


def logout(request):
    django_logout(request)
    return redirect('/')