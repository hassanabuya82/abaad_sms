# Generated by Django 4.1.7 on 2023-05-09 20:15

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0002_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='student',
            name='level',
        ),
    ]
