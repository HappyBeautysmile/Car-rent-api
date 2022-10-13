from django.contrib import admin, messages
from django_summernote.admin import SummernoteModelAdmin

from posts.models import Post, Tag


@admin.register(Post)
class PostAdmin(SummernoteModelAdmin):
    summernote_fields = ('description',)
    list_display = ('title', 'id', 'is_public', 'slug',
                    'author', 'edited_at', 'created_at', 'rental_start', 'rental_end','available')
    list_filter = ('is_public', 'available','rental_start', 'rental_end',)
    search_fields = ['title', 'slug', 'author']
    prepopulated_fields = {'slug': ('title',)}
    actions = ['make_public', 'make_unpublic']

    def make_public(modeladmin, request, queryset):
        queryset.update(is_public=True)
        messages.success(
            request, 'Selected Post(s) are now public !')

    def make_unpublic(modeladmin, request, queryset):
        queryset.update(is_public=False)
        messages.success(
            request, 'Selected Post(s) are no longer public!')


@admin.register(Tag)
class TagAdmin(admin.ModelAdmin):
    list_display = ('name', 'id')
    list_filter = ('name',)
    search_fields = ('name',)
