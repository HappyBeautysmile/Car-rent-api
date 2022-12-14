from django.urls import path

from posts.views import PostDetail, PostsList ,RentCar 

urlpatterns = [
    path('', PostsList.as_view()),
    path('<slug:slug>/', PostDetail.as_view()),
    path('<slug:slug>/rent', RentCar.as_view()),
]
