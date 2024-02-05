from rest_framework import generics
from .models import Car
from .serializers import CarSerializer

class CarCreateView(generics.CreateAPIView):
    queryset = Car.objects.all()
    serializer_class = CarSerializer