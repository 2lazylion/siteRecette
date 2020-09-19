from django.db import models
from django.contrib.auth.models import User
from preferences.models import Preference

# Create your models here.
class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    preferences = models.ForeignKey(
        Preference, on_delete=models.CASCADE
    )