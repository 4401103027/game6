# Generated by Django 3.2.7 on 2022-01-01 18:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0028_auto_20220102_0110'),
    ]

    operations = [
        migrations.AddField(
            model_name='trackinglevelgame',
            name='stars',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]