# Generated by Django 3.2.7 on 2021-11-29 15:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0020_tracking'),
    ]

    operations = [
        migrations.AlterField(
            model_name='callsign',
            name='frame',
            field=models.CharField(max_length=250, null=True),
        ),
    ]