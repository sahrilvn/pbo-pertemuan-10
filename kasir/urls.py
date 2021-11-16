from django.contrib import admin
from django.urls import path
from kasirapp.views import index, create


urlpatterns = [
    path('admin/', admin.site.urls),
     path('index/', index),
     path('create/', create),        
]
