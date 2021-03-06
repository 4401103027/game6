# Generated by Django 3.2.7 on 2021-11-18 03:07

import ckeditor_uploader.fields
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0017_delete_activity'),
    ]

    operations = [
        migrations.CreateModel(
            name='Activity',
            fields=[
                ('activityid', models.AutoField(primary_key=True, serialize=False)),
                ('activityorder', models.IntegerField(blank=True, null=True)),
                ('name', models.CharField(blank=True, max_length=250, null=True)),
                ('image', models.CharField(blank=True, max_length=250, null=True)),
                ('description', ckeditor_uploader.fields.RichTextUploadingField(blank=True, null=True)),
                ('link', models.CharField(blank=True, max_length=250, null=True)),
                ('stars', models.IntegerField(blank=True, null=True)),
                ('createdate', models.DateField(auto_now_add=True, null=True)),
                ('editdate', models.DateTimeField(auto_now=True, null=True)),
                ('isenable', models.BooleanField(blank=True, default=True, null=True)),
                ('note', models.TextField(blank=True, null=True)),
                ('lessonid', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='homepage.lesson')),
            ],
            options={
                'db_table': 'Activity',
                'managed': True,
            },
        ),
    ]
