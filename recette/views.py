from django.shortcuts import render
from .models import * 

# Create your views here.
# retourne toutes les recettes
def getRecettes(request):
    # verifie si le client à utilisé la barre de recherche
    if request.method == 'GET' and 'search' in request.GET:
        # prend le nom de la recette à partir des paramètres de la requête
        nomRecette = request.GET["search"]
        
        # récupère toutes les recettes de la base de données
        recettes = Recette.objects.filter(nomRecette__icontains=nomRecette)
        
        # retourne les recettes à la page web
        return render(request, 'templates/recettes.html', {'recettes': recettes})
    
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

    # récupère les ingrédients qui sont relier à la recette de la bd
    recette.ingredients = [ingredientRecette for ingredientRecette in IngredientRecette.objects.filter(recette=id)]

    # récupère les étapes de préparation qui sont relier à la recette de la bd
    recette.etapePreparation = [etapePreparation for etapePreparation in EtapePreparation.objects.filter(recette=id)] 

    # retourne la recette à la page web
    return render(request, 'templates/recette.html', {'recette': recette})