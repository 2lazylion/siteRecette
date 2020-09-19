from django.db import models


# Create your models here.
# model d'ingrédient
class Ingredient(models.Model):
    
    # enum pour les familles alimentaires
    class FamilleAlimentaire(models.TextChoices):
        FRUIT_LEGUME = 'fruit/legume' 
        VIANDE = 'viande'
        POISSON = 'poisson'
        PROTEINE_VEGETARIENNE = 'proteine vegetarienne'
        BOISSON = 'boissson'
        MATIERE_GRASSE = 'matiere grasse'
        PRODUIT_SUCRE = 'produit sucre'
        OEUF = 'oeuf' 

    # attributs
    nomIngredient = models.CharField(max_length=50)
    famille_alimentaire = models.CharField(
        max_length = 25,
        choices = FamilleAlimentaire.choices,
    )

class Recette(models.Model):
    nomRecettes = models.CharField(max_length=50)
    ingredients = models.ForeignKey(
        Ingredient, on_delete=models.PROTECT
    )
    description = models.TextField(max_length=255)
    préparation = models.TextField(max_length=255)
    

