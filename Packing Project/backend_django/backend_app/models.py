from django.db import models

# Create your models here.
class Car(models.Model):
    image = models.ImageField(upload_to='car_images/')
    latitude = models.FloatField()
    longitude = models.FloatField()