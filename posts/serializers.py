from rest_framework import serializers
from users.serializers import UserSerializer

from posts.models import Post, Tag


class TagSerializer(serializers.ModelSerializer):

    class Meta:
        model = Tag
        fields = ['id', 'name']


class PostSerializer(serializers.ModelSerializer):

    author = UserSerializer(read_only=True)
    tags = TagSerializer(read_only=True, many=True)
    # title = serializers.CharField(allow_blank=True)
    class Meta:
        model = Post
        fields = ['title', 'slug', 'author', 'thumbnail',
                  'description', 'read_time', 'tags', 'created_at', 'rental_start', 'rental_end','price','available']
        read_only_fields = ['author']
