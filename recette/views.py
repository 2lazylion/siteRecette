from django.shortcuts import render
from .models import * 

# Create your views here.
# retourne toutes les recettes
def getRecettes(request):
    # verifie si le client à utilisé la barre de recherche
    if request.method == 'GET' and 'search' in request.GET:
        # prend le nom de la recette à partir des paramètres de la requête
        recherche = request.GET["search"]
        
        # récupère toutes les recettes de la base de données
        # filtre selon un nom de la recette
        if Recette.objects.filter(nomRecette__icontains=recherche):
            recettes = Recette.objects.filter(nomRecette__icontains=recherche)
        
        # filtre selon un ingrédient
        elif Recette.objects.filter(ingredientrecette__ingredient__nomIngredient__icontains=recherche):
            recettes = Recette.objects.filter(ingredientrecette__ingredient__nomIngredient__icontains=recherche)

        else: 
            recettes = None
            
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
    recette.ingredients = IngredientRecette.objects.filter(recette__id=id)

    # récupère les étapes de préparation qui sont relier à la recette de la bd
    recette.etapePreparation = EtapePreparation.objects.filter(recette__id=id) 

    # retourne la recette à la page web
    return render(request, 'templates/recette.html', {'recette': recette})