# Generated by Django 3.2.7 on 2021-12-03 12:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0022_auto_20211203_1941'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='contenttest',
            name='textid',
        ),
        migrations.RemoveField(
            model_name='timetest',
            name='textid',
        ),
    ]