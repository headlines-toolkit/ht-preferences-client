import 'package:ht_preferences_client/ht_preferences_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// Mock class for HtPreferencesClient
class MockHtPreferencesClient extends Mock implements HtPreferencesClient {}

void main() {
  setUpAll(() {
    registerFallbackValue(ThemeMode.light);
  });
  group('HtPreferencesClient', () {
    late HtPreferencesClient client;

    setUp(() {
      client = MockHtPreferencesClient();
    });

    test('getLanguage returns the language', () async {
      when(() => client.getLanguage()).thenAnswer((_) async => 'en');
      expect(await client.getLanguage(), 'en');
    });

    test('setLanguage sets the language', () async {
      when(() => client.setLanguage(any())).thenAnswer((_) async {});
      await client.setLanguage('fr');
      verify(() => client.setLanguage('fr')).called(1);
    });

    test('setLanguage throws InvalidLanguageException for invalid language',
        () async {
      when(() => client.setLanguage(any()))
          .thenThrow(InvalidLanguageException(''));
      expect(
        () => client.setLanguage(''),
        throwsA(isA<InvalidLanguageException>()),
      );
    });

    test('getTheme returns the theme', () async {
      when(() => client.getTheme()).thenAnswer((_) async => ThemeMode.dark);
      expect(await client.getTheme(), ThemeMode.dark);
    });

    test('setTheme sets the theme', () async {
      when(() => client.setTheme(any())).thenAnswer((_) async {});
      await client.setTheme(ThemeMode.light);
      verify(() => client.setTheme(ThemeMode.light)).called(1);
    });

    test('getFavoriteSources returns the favorite sources', () async {
      when(() => client.getFavoriteSources())
          .thenAnswer((_) async => ['source1', 'source2']);
      expect(await client.getFavoriteSources(), ['source1', 'source2']);
    });

    test('setFavoriteSources sets the favorite sources', () async {
      when(() => client.setFavoriteSources(any())).thenAnswer((_) async {});
      await client.setFavoriteSources(['source3', 'source4']);
      verify(() => client.setFavoriteSources(['source3', 'source4'])).called(1);
    });

    test('addFavoriteSource adds a favorite source', () async {
      when(() => client.addFavoriteSource(any())).thenAnswer((_) async {});
      await client.addFavoriteSource('source5');
      verify(() => client.addFavoriteSource('source5')).called(1);
    });

    test('removeFavoriteSource removes a favorite source', () async {
      when(() => client.removeFavoriteSource(any())).thenAnswer((_) async {});
      await client.removeFavoriteSource('source1');
      verify(() => client.removeFavoriteSource('source1')).called(1);
    });

    test(
        'removeFavoriteSource throws SourceNotFoundException when source not found',
        () async {
      when(() => client.removeFavoriteSource(any()))
          .thenThrow(SourceNotFoundException('sourceX'));
      expect(
        () => client.removeFavoriteSource('sourceX'),
        throwsA(isA<SourceNotFoundException>()),
      );
    });

    test('getFavoriteCategories returns the favorite categories', () async {
      when(() => client.getFavoriteCategories())
          .thenAnswer((_) async => ['category1', 'category2']);
      expect(await client.getFavoriteCategories(), ['category1', 'category2']);
    });

    test('setFavoriteCategories sets the favorite categories', () async {
      when(() => client.setFavoriteCategories(any())).thenAnswer((_) async {});
      await client.setFavoriteCategories(['category3', 'category4']);
      verify(() => client.setFavoriteCategories(['category3', 'category4']))
          .called(1);
    });

    test('addFavoriteCategory adds a favorite category', () async {
      when(() => client.addFavoriteCategory(any())).thenAnswer((_) async {});
      await client.addFavoriteCategory('category5');
      verify(() => client.addFavoriteCategory('category5')).called(1);
    });

    test('removeFavoriteCategory removes a favorite category', () async {
      when(() => client.removeFavoriteCategory(any())).thenAnswer((_) async {});
      await client.removeFavoriteCategory('category1');
      verify(() => client.removeFavoriteCategory('category1')).called(1);
    });

    test(
        'removeFavoriteCategory throws CategoryNotFoundException when category not found',
        () async {
      when(() => client.removeFavoriteCategory(any()))
          .thenThrow(CategoryNotFoundException('categoryX'));
      expect(
        () => client.removeFavoriteCategory('categoryX'),
        throwsA(isA<CategoryNotFoundException>()),
      );
    });

    test('getFavoriteEventCountries returns the favorite event countries',
        () async {
      when(() => client.getFavoriteEventCountries())
          .thenAnswer((_) async => ['country1', 'country2']);
      expect(
        await client.getFavoriteEventCountries(),
        ['country1', 'country2'],
      );
    });

    test('setFavoriteEventCountries sets the favorite event countries',
        () async {
      when(() => client.setFavoriteEventCountries(any()))
          .thenAnswer((_) async {});
      await client.setFavoriteEventCountries(['country3', 'country4']);
      verify(() => client.setFavoriteEventCountries(['country3', 'country4']))
          .called(1);
    });

    test('addFavoriteEventCountry adds a favorite event country', () async {
      when(() => client.addFavoriteEventCountry(any()))
          .thenAnswer((_) async {});
      await client.addFavoriteEventCountry('country5');
      verify(() => client.addFavoriteEventCountry('country5')).called(1);
    });

    test('removeFavoriteEventCountry removes a favorite event country',
        () async {
      when(() => client.removeFavoriteEventCountry(any()))
          .thenAnswer((_) async {});
      await client.removeFavoriteEventCountry('country1');
      verify(() => client.removeFavoriteEventCountry('country1')).called(1);
    });

    test(
        'removeFavoriteEventCountry throws CountryNotFoundException when country not found',
        () async {
      when(() => client.removeFavoriteEventCountry(any()))
          .thenThrow(CountryNotFoundException('countryX'));
      expect(
        () => client.removeFavoriteEventCountry('countryX'),
        throwsA(isA<CountryNotFoundException>()),
      );
    });

    test('PreferencesStorageException  test', () async {
      when(() => client.getFavoriteEventCountries())
          .thenThrow(PreferencesStorageException('Storage error'));
      expect(
        () => client.getFavoriteEventCountries(),
        throwsA(isA<PreferencesStorageException>()),
      );
    });
  });
}
