import pytest
from library.books.models import Author, Genre, Language

@pytest.mark.django_db
def test_author_create():
    author = Author.objects.create(name='Paulo', last_name='Coelho')
    print('This is my authors name: ', author.name)
    assert author.last_name == 'Coelho'
    assert Author.objects.count() == 1
    author.delete()
    assert Author.objects.count() == 0

@pytest.mark.django_db
def test_genre_create():
    genre = Genre.objects.create(name='Horror')
    print('This is my new genre: ', genre.name)
    assert genre.name == 'Horror'

@pytest.fixture
def fixture_genre_create():
    genre = Genre.objects.create(name='Test')
    return genre

@pytest.mark.django_db
def test_genre_delete(fixture_genre_create):
    amount = fixture_genre_create
    print('Genre created')
    assert Genre.objects.count() == 1
    amount.delete()
    print('Genre deleted')
    assert Genre.objects.count() == 0

@pytest.mark.django_db
def test_no_genre():
    count = Genre.objects.count()
    print(count)
    assert Genre.objects.count() == 0

@pytest.fixture
def fixture_lang_example():
    return Language.objects.create(name='English',code='EN')

@pytest.mark.django_db
def test_lang_create(fixture_lang_example):
    lang = fixture_lang_example
    print('Language created')
    assert Language.objects.count() == 1

@pytest.mark.django_db
def test_lang_delete(fixture_lang_example):
    lang = fixture_lang_example
    assert Language.objects.count() == 1
    lang.delete()
    print('Language deleted')
    assert Language.objects.count() == 0

@pytest.mark.parametrize(
    'langName, langCode',
    (
        ('Espanol', 'ES'),
        ('Albanian', 'ALB'),
        ('Czech', 'CZE'),
        ('French', 'FRE')
    )
)
@pytest.mark.django_db
def test_lang_create_with_props(langName, langCode):
    lang = Language.objects.create(name=langName,code=langCode)
    print(f'Language {lang.name} created')
    assert Language.objects.count() == 1

@pytest.mark.django_db
def test_author_with_monkey(monkeypatch):
    author = Author.objects.create(name='Paulo', last_name='Coelho')
    monkeypatch.setattr(author, 'name', 'John')
    assert author.name == 'John'
    print('Monkey patching...')

@pytest.mark.django_db
def test_author_with_monkey_count(monkeypatch):
    author = Author.objects.create(name='Paulo', last_name='Coelho')
    # def monkey_count_patch():
    #     return 4
    # monkeypatch.setattr(Author.objects, 'count', monkey_count_patch)
    # assert Author.objects.count() == 4
    # print('Monkey patching...')
    class AuthorQuerySetMock():
        def __init__(self):
            self.some_value = 1

        def count(self):
            return 4
    
    def model_count_mock():
        return AuthorQuerySetMock()
    
    monkeypatch.setattr(Author.objects, 'all', model_count_mock)
    assert Author.objects.all().count() == 4
    print('Mocking...')