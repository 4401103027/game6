# Generated by Django 3.2.7 on 2021-12-16 05:51

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('homepage', '0023_auto_20211203_1943'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Tracking',
            new_name='TrackingActivity',
        ),
        migrations.RenameField(
            model_name='trackingactivity',
            old_name='trackingid',
            new_name='trackingactivityid',
        ),
        migrations.AlterModelTable(
            name='trackingactivity',
            table='TrackingActivity',
        ),
        migrations.CreateModel(
            name='TrackingGame',
            fields=[
                ('trackinggameid', models.AutoField(primary_key=True, serialize=False)),
                ('experience', models.IntegerField(blank=True, null=True)),
                ('createdate', models.DateField(auto_now_add=True, null=True)),
                ('editdate', models.DateTimeField(auto_now=True, null=True)),
                ('isenable', models.BooleanField(blank=True, default=True, null=True)),
                ('note', models.TextField(blank=True, null=True)),
                ('accountid', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='homepage.account')),
                ('gameid', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='homepage.activity')),
            ],
            options={
                'db_table': 'TrackingGame',
                'managed': True,
            },
        ),
    ]
