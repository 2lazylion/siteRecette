from django.db import models
from recette.models import Ingredient 

# Create your models here.
class Preference(models.Model):
    aimeOuPas = models.BooleanField()
    ingredients = models.ForeignKey(
        Ingredient,on_delete=models.PROTECT
    )

    def __str__(self):
        return super().__str__()