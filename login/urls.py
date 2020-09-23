from django.urls import path
from .views import *

urlpatterns = [
    path('', loginForm, name = 'login form'),
    path('logout/', logout)
]