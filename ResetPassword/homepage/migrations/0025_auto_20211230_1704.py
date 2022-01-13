# Generated by Django 3.2.7 on 2021-12-30 10:04

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0024_auto_20211216_1251'),
    ]

    operations = [
        migrations.AlterField(
            model_name='competition',
            name='image',
            field=models.CharField(max_length=250, null=True),
        ),
        migrations.AlterField(
            model_name='game',
            name='image',
            field=models.CharField(blank=True, max_length=250, null=True),
        ),
        migrations.CreateModel(
            name='GameLevel',
            fields=[
                ('levelid', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.TextField(blank=True, max_length=250, null=True)),
                ('image', models.CharField(blank=True, max_length=250, null=True)),
                ('link', models.CharField(blank=True, max_length=250, null=True)),
                ('stars', models.IntegerField(blank=True, null=True)),
                ('createdate', models.DateField(auto_now_add=True, null=True)),
                ('editdate', models.DateTimeField(auto_now=True, null=True)),
                ('isenable', models.BooleanField(blank=True, default=True, null=True)),
                ('note', models.TextField(blank=True, null=True)),
                ('gameid', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='homepage.game')),
            ],
            options={
                'db_table': 'GameLevel',
                'managed': True,
            },
        ),
    ]
