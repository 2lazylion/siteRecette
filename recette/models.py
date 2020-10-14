from django.db import models


# Create your models here.
# model pour les recettes
class Recette(models.Model):
    nomRecette = models.CharField(max_length=50, db_index=True)
    description = models.TextField(max_length=255, blank=True)
    #preparation = models.TextField(max_length=255)
    ingredients = []
    etapePreparation = []

    def __str__(self):
        return self.nomRecette

# modele pour les ingrédients
class Ingredient(models.Model):
    
    # enum pour les familles alimentaires
    class FamilleAlimentaire(models.TextChoices):
        FRUIT_LEGUME = 'fruit/legume' 
        FINES_HERBES = 'fines herbes'
        CEREALES = 'cereales'
        VIANDE = 'viande'
        POISSON = 'poisson'
        PROTEINE_VEGETARIENNE = 'proteine vegetarienne'
        BOISSON = 'boissson'
        MATIERE_GRASSE = 'matiere grasse'
        PRODUIT_LAITIER = 'produit laitier'
        PRODUIT_SUCRE = 'produit sucre'
        OEUF = 'oeuf'
        ASSAISONNEMENT = 'assaisonnement'
        SAUCE = 'sauce'
        SUCRE = 'sucre'

    # attributs
    nomIngredient = models.CharField(max_length=50, db_index=True)
    famille_alimentaire = models.CharField(
        max_length = 25,
        choices = FamilleAlimentaire.choices,
    )

    def __str__(self):
        return self.nomIngredient

# modèle pour rejoindre les Ingrédients avec les Recettes
class IngredientRecette(models.Model):
    
    # enum pour les mesures
    class Mesures(models.TextChoices):
        TASSE = 'tasse' 
        CUILLERE_A_SOUPE = 'c. à soupe'
        CUILLERE_A_THE = 'c. à thé'
        GRAMME = 'g'
        ONCE = 'oz'
        LIVRE = 'lb'
        MILLILITRE = 'ml'
    
    # clé étrangère reliant les ingrédients et les recettes à ce modèle
    ingredient = models.ForeignKey(
        Ingredient, on_delete=models.PROTECT
    )
    recette = models.ForeignKey(
        Recette, on_delete=models.CASCADE, default=''
    )
    # attribut du modele
    quantite = models.DecimalField(
        max_digits=4, 
        decimal_places=2,
        blank = True,
        null = True
    )
    mesure = models.CharField(
        max_length = 25,
        choices =  Mesures.choices,
        blank = True,
        null = True
    )
    # TODO: peut-être rempli si l'ingrédient est une viande
    coupe_de_viande = models.CharField(
        max_length = 25, 
        blank = True, 
        null = True
    )

    # méthode toString
    def __str__(self):
        res = ""

        # si il y a une coupe de viande de spécifié
        if self.coupe_de_viande:
            return str(self.quantite) + " " + self.coupe_de_viande + " de " + self.ingredient.nomIngredient

        # si il y a une mesure de spécifié
        if self.mesure:
            return str(self.quantite) + " " + self.mesure + " " + self.ingredient.nomIngredient  
        
        # si aucun des deux est spécifiés et qu'il y a une quantité
        if self.quantite:
            return str(self.quantite) + " " + self.ingredient.nomIngredient

        # Si rien n'est spécifié
        return self.ingredient.nomIngredient

# modèle pour contenir les étapes de préparations
class EtapePreparation(models.Model):
    # clé étrangère pour relier les étapes à la recette
    recette = models.ForeignKey(
        Recette, on_delete=models.CASCADE, default=''
    )

    # attribut du modèle 
    no_etape = models.IntegerField()
    etape = models.TextField(max_length=255)


    # méthode toString
    def __str__(self):
        return "Étape " + str(self.no_etape) + " - " + self.recette.nomRecette


    

