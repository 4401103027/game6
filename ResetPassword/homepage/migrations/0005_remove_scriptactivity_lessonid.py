# Generated by Django 3.2.7 on 2021-11-01 18:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0004_auto_20211101_2307'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='scriptactivity',
            name='lessonid',
        ),
    ]
