from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path('accounts/', include('django.contrib.auth.urls')),
    path('dashboard/', views.dashboard, name='dashboard'),
    path('oauth/', include('social_django.urls', namespace='social')),
    path('register/', views.register, name='register'),
    # Other app-specific URLs
]
