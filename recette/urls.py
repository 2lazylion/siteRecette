from django.urls import path, include
from .views import *

urlpatterns = [
    path('', getRecettes , name = 'recettes'),
    path('recette/', getRecette, name = 'recette')
]