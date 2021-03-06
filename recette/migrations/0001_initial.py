# Generated by Django 3.1.1 on 2020-09-19 04:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Ingredient',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nomIngredient', models.CharField(max_length=50)),
                ('famille_alimentaire', models.CharField(choices=[('fruit/legume', 'Fruit Legume'), ('viande', 'Viande'), ('poisson', 'Poisson'), ('proteine vegetarienne', 'Proteine Vegetarienne'), ('boissson', 'Boisson'), ('matiere grasse', 'Matiere Grasse'), ('produit sucre', 'Produit Sucre'), ('oeuf', 'Oeuf')], max_length=25)),
            ],
        ),
        migrations.CreateModel(
            name='Recette',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nomRecettes', models.CharField(max_length=50)),
                ('description', models.TextField(max_length=255)),
                ('préparation', models.TextField(max_length=255)),
                ('ingredients', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='recette.ingredient')),
            ],
        ),
    ]
