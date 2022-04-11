from django.db import models

# Create your models here.
class Author(models.Model):
	name = models.CharField(max_length=128)
	last_name = models.CharField(max_length=128, null=True)

class Language(models.Model):
    name = models.CharField(max_length=256)
    code = models.CharField(max_length=3)

class Genre(models.Model):
    name = models.CharField(max_length=120)

class Book(models.Model):
	name = models.CharField(max_length = 256)
	publish_year = models.SmallIntegerField()
	pages = models.SmallIntegerField()
	price = models.DecimalField(max_digits = 6, decimal_places = 2)
	created_at = models.DateTimeField(auto_now_add=True, null=True)
	updated_at = models.DateTimeField(auto_now=True,null=True)
	authors = models.ManyToManyField(Author, through='BooksAuthors')
	language = models.ManyToManyField(Language, through='BooksLanguages')
	genre = models.ManyToManyField(Genre, through='BooksGenres')


class BooksAuthors(models.Model):
	book = models.ForeignKey(Book, related_name='BookWithAuthors', on_delete=models.DO_NOTHING)
	author = models.ForeignKey(Author, related_name='AuthorWithBooks', on_delete=models.DO_NOTHING)

	def __str__(self):
		return f'{self.id}'

class BooksLanguages(models.Model):
    book = models.ForeignKey(Book, related_name='BookWithBookLanguages', on_delete=models.DO_NOTHING)
    language = models.ForeignKey(Language, related_name='LanguageWithBookLanguages', on_delete=models.DO_NOTHING)

class BooksGenres(models.Model):
    book = models.ForeignKey(Book, related_name='BookWithGenres', on_delete=models.DO_NOTHING)
    genre = models.ForeignKey(Genre, related_name='GenreWithGenres', on_delete=models.DO_NOTHING)