//
//ignore_for_file: lines_longer_than_80_chars

import 'package:ht_preferences_client/ht_preferences_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockHtPreferencesClient extends Mock implements HtPreferencesClient {}

void main() {
  setUpAll(() {
    registerFallbackValue(ThemeMode.system);
  });
  group('HtPreferencesClient', () {
    late HtPreferencesClient client;

    setUp(() {
      client = MockHtPreferencesClient();
    });

    group('getLanguage', () {
      test('returns the language when it is set', () async {
        when(() => client.getLanguage()).thenAnswer((_) async => 'en');
        expect(await client.getLanguage(), 'en');
      });

      test('throws PreferencesStorageException when language is not set',
          () async {
        when(() => client.getLanguage())
            .thenThrow(PreferencesStorageException('Language not set'));
        expect(
          () async => client.getLanguage(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setLanguage', () {
      test('sets the language correctly', () async {
        when(() => client.setLanguage(any())).thenAnswer((_) async {});
        await client.setLanguage('fr');
        verify(() => client.setLanguage('fr')).called(1);
      });

      test('throws InvalidLanguageException when language code is invalid',
          () async {
        when(() => client.setLanguage(any()))
            .thenThrow(InvalidLanguageException('invalid'));
        expect(
          () async => client.setLanguage('invalid'),
          throwsA(isA<InvalidLanguageException>()),
        );
      });
    });

    group('getTheme', () {
      test('returns the theme when it is set', () async {
        when(() => client.getTheme()).thenAnswer((_) async => ThemeMode.dark);
        expect(await client.getTheme(), ThemeMode.dark);
      });

      test('throws PreferencesStorageException when theme is not set',
          () async {
        when(() => client.getTheme())
            .thenThrow(PreferencesStorageException('Theme not set'));
        expect(
          () async => client.getTheme(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setTheme', () {
      test('sets the theme correctly', () async {
        when(() => client.setTheme(any())).thenAnswer((_) async {});
        await client.setTheme(ThemeMode.light);
        verify(() => client.setTheme(ThemeMode.light)).called(1);
      });
    });

    group('getFavoriteSourceIds', () {
      test('returns the favorite sources when they are set', () async {
        when(() => client.getFavoriteSourceIds())
            .thenAnswer((_) async => ['source1', 'source2']);
        expect(await client.getFavoriteSourceIds(), ['source1', 'source2']);
      });

      test(
          'throws PreferencesStorageException when favorite sources are not set',
          () async {
        when(() => client.getFavoriteSourceIds())
            .thenThrow(PreferencesStorageException('Favorite sources not set'));
        expect(
          () async => client.getFavoriteSourceIds(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setFavoriteSourceIds', () {
      test('sets the favorite sources correctly', () async {
        when(() => client.setFavoriteSourceIds(any())).thenAnswer((_) async {});
        await client.setFavoriteSourceIds(['source3', 'source4']);
        verify(() => client.setFavoriteSourceIds(['source3', 'source4']))
            .called(1);
      });
    });

    group('addFavoriteSource', () {
      test('adds a favorite source correctly', () async {
        when(() => client.addFavoriteSource(any())).thenAnswer((_) async {});
        await client.addFavoriteSource('source5');
        verify(() => client.addFavoriteSource('source5')).called(1);
      });
    });

    group('removeFavoriteSource', () {
      test('removes a favorite source correctly', () async {
        when(() => client.removeFavoriteSource(any())).thenAnswer((_) async {});
        await client.removeFavoriteSource('source1');
        verify(() => client.removeFavoriteSource('source1')).called(1);
      });

      test('throws SourceNotFoundException when source is not a favorite',
          () async {
        when(() => client.removeFavoriteSource(any()))
            .thenThrow(SourceNotFoundException('source1'));
        expect(
          () async => client.removeFavoriteSource('source1'),
          throwsA(isA<SourceNotFoundException>()),
        );
      });
    });

    group('getFavoriteCategoryIds', () {
      test('returns the favorite categories when they are set', () async {
        when(() => client.getFavoriteCategoryIds())
            .thenAnswer((_) async => ['cat1', 'cat2']);
        expect(await client.getFavoriteCategoryIds(), ['cat1', 'cat2']);
      });

      test(
          'throws PreferencesStorageException when favorite categories are not set',
          () async {
        when(() => client.getFavoriteCategoryIds()).thenThrow(
          PreferencesStorageException('Favorite categories not set'),
        );
        expect(
          () async => client.getFavoriteCategoryIds(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setFavoriteCategoryIds', () {
      test('sets the favorite categories correctly', () async {
        when(() => client.setFavoriteCategoryIds(any()))
            .thenAnswer((_) async {});
        await client.setFavoriteCategoryIds(['cat3', 'cat4']);
        verify(() => client.setFavoriteCategoryIds(['cat3', 'cat4'])).called(1);
      });
    });

    group('addFavoriteCategory', () {
      test('adds a favorite category correctly', () async {
        when(() => client.addFavoriteCategory(any())).thenAnswer((_) async {});
        await client.addFavoriteCategory('cat5');
        verify(() => client.addFavoriteCategory('cat5')).called(1);
      });
    });

    group('removeFavoriteCategory', () {
      test('removes a favorite category correctly', () async {
        when(() => client.removeFavoriteCategory(any()))
            .thenAnswer((_) async {});
        await client.removeFavoriteCategory('cat1');
        verify(() => client.removeFavoriteCategory('cat1')).called(1);
      });

      test('throws CategoryNotFoundException when category is not a favorite',
          () async {
        when(() => client.removeFavoriteCategory(any()))
            .thenThrow(CategoryNotFoundException('cat1'));
        expect(
          () async => client.removeFavoriteCategory('cat1'),
          throwsA(isA<CategoryNotFoundException>()),
        );
      });
    });

    group('getFavoriteEventCountryIds', () {
      test('returns the favorite event countries when they are set', () async {
        when(() => client.getFavoriteEventCountryIds())
            .thenAnswer((_) async => ['country1', 'country2']);
        expect(
          await client.getFavoriteEventCountryIds(),
          ['country1', 'country2'],
        );
      });

      test(
          'throws PreferencesStorageException when favorite event countries are not set',
          () async {
        when(() => client.getFavoriteEventCountryIds()).thenThrow(
          PreferencesStorageException('Favorite event countries not set'),
        );
        expect(
          () async => client.getFavoriteEventCountryIds(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setFavoriteEventCountryIds', () {
      test('sets the favorite event countries correctly', () async {
        when(() => client.setFavoriteEventCountryIds(any()))
            .thenAnswer((_) async {});
        await client.setFavoriteEventCountryIds(['country3', 'country4']);
        verify(() =>
                client.setFavoriteEventCountryIds(['country3', 'country4']),)
            .called(1);
      });
    });

    group('addFavoriteEventCountry', () {
      test('adds a favorite event country correctly', () async {
        when(() => client.addFavoriteEventCountry(any()))
            .thenAnswer((_) async {});
        await client.addFavoriteEventCountry('country5');
        verify(() => client.addFavoriteEventCountry('country5')).called(1);
      });
    });

    group('removeFavoriteEventCountry', () {
      test('removes a favorite event country correctly', () async {
        when(() => client.removeFavoriteEventCountry(any()))
            .thenAnswer((_) async {});
        await client.removeFavoriteEventCountry('country1');
        verify(() => client.removeFavoriteEventCountry('country1')).called(1);
      });

      test(
          'throws CountryNotFoundException when event country is not a favorite',
          () async {
        when(() => client.removeFavoriteEventCountry(any()))
            .thenThrow(CountryNotFoundException('country1'));
        expect(
          () async => client.removeFavoriteEventCountry('country1'),
          throwsA(isA<CountryNotFoundException>()),
        );
      });
    });
    group('PreferencesStorageException', () {
      test('toString returns correct message', () {
        final exception = PreferencesStorageException('Test message');
        expect(
          exception.toString(),
          'PreferencesStorageException: Test message',
        );
      });
    });

    group('InvalidLanguageException', () {
      test('toString returns correct message', () {
        final exception = InvalidLanguageException('invalid');
        expect(
          exception.toString(),
          'InvalidLanguageException: Invalid language code: invalid',
        );
      });
    });

    group('InvalidThemeModeException', () {
      test('toString returns correct message', () {
        final exception = InvalidThemeModeException('test');
        expect(
          exception.toString(),
          'InvalidThemeModeException: Invalid theme mode: test',
        );
      });
    });

    group('SourceNotFoundException', () {
      test('toString returns correct message', () {
        final exception = SourceNotFoundException('source1');
        expect(
          exception.toString(),
          'SourceNotFoundException: Source not found in favorites: source1',
        );
      });
    });

    group('CategoryNotFoundException', () {
      test('toString returns correct message', () {
        final exception = CategoryNotFoundException('category1');
        expect(
          exception.toString(),
          'CategoryNotFoundException: Category not found in favorites: category1',
        );
      });
    });

    group('CountryNotFoundException', () {
      test('toString returns correct message', () {
        final exception = CountryNotFoundException('country1');
        expect(
          exception.toString(),
          'CountryNotFoundException: Country not found in favorites: country1',
        );
      });
    });
  });
}
