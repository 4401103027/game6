# Generated by Django 3.2.7 on 2021-11-01 16:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0002_activity_topiclessonid'),
    ]

    operations = [
        migrations.AlterField(
            model_name='character',
            name='characterid',
            field=models.CharField(max_length=250, primary_key=True, serialize=False),
        ),
    ]