# Generated by Django 3.1.1 on 2020-09-29 02:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('recette', '0012_etapepreparation'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='recette',
            name='préparation',
        ),
    ]
