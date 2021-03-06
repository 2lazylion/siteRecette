# Generated by Django 3.1.1 on 2020-10-04 04:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('recette', '0014_auto_20200928_2302'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ingredient',
            name='famille_alimentaire',
            field=models.CharField(choices=[('fruit/legume', 'Fruit Legume'), ('cereales', 'Cereales'), ('viande', 'Viande'), ('poisson', 'Poisson'), ('proteine vegetarienne', 'Proteine Vegetarienne'), ('boissson', 'Boisson'), ('matiere grasse', 'Matiere Grasse'), ('produit sucre', 'Produit Sucre'), ('oeuf', 'Oeuf'), ('assaisonnement', 'Assaisonnement'), ('sauce', 'Sauce'), ('sucre', 'Sucre')], max_length=25),
        ),
    ]
