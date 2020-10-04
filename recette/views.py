from django.shortcuts import render
from .models import *

# Create your views here.
# retourne toutes les recettes
def getRecettes(request):
    # récupère toutes les recettes de la base de données
    recettes = Recette.objects.all()

    # retourne les recettes à la page web
    return render(request, 'templates/recettes.html', {'recettes': recettes})

# retourne une recette à partir de son id
def getRecette(request):
    # récupère le id de la recette dans la requete
    id = request.GET["id"]
    
    # récupère la recette de la bd
    recette = Recette.objects.get(pk=id)
    
    # retourne la recette à la page web
    return render(request, 'templates/recette.html', {'recette': recette})