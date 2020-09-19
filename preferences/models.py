from django.db import models
from recette.models import Ingredient 

# Create your models here.
class Preference(models.Model):
    aimeOuPas = models.BooleanField()
    ingrediants = models.ForeignKey(
        Ingredient,on_delete=models.PROTECT
    )