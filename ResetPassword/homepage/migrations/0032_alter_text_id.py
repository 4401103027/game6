# Generated by Django 3.2.7 on 2022-01-11 11:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0031_auto_20220102_0936'),
    ]

    operations = [
        migrations.AlterField(
            model_name='text',
            name='id',
            field=models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]