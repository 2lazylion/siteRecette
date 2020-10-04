from django.urls import path
from .views import *

urlpatterns = [
    path('', loginForm, name = 'login'),
    path('logout/', logout)
]