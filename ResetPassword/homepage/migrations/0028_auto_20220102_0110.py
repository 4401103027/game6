# Generated by Django 3.2.7 on 2022-01-01 18:10

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0027_auto_20220101_2309'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='trackingactivity',
            name='experience',
        ),
        migrations.RemoveField(
            model_name='trackinglevelgame',
            name='experience',
        ),
    ]
