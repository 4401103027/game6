# Generated by Django 3.2.7 on 2021-12-03 12:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0021_alter_callsign_frame'),
    ]

    operations = [
        migrations.AddField(
            model_name='contenttest',
            name='image',
            field=models.CharField(blank=True, max_length=250, null=True),
        ),
        migrations.AddField(
            model_name='timetest',
            name='image',
            field=models.CharField(blank=True, max_length=250, null=True),
        ),
    ]
