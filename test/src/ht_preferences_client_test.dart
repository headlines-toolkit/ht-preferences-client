//
//ignore_for_file: lines_longer_than_80_chars

import 'package:ht_preferences_client/ht_preferences_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockHtPreferencesClient extends Mock implements HtPreferencesClient {}

void main() {
  setUpAll(() {
    registerFallbackValue(ThemeMode.system);
    registerFallbackValue(HeadlineArticleTextSize.small);
    registerFallbackValue(AppFontSize.small);
    registerFallbackValue(ContentDensity.compact);
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

    group('getFollowedSourceIds', () {
      test('returns the followed sources when they are set', () async {
        when(() => client.getFollowedSourceIds())
            .thenAnswer((_) async => ['source1', 'source2']);
        expect(await client.getFollowedSourceIds(), ['source1', 'source2']);
      });

      test(
          'throws PreferencesStorageException when followed sources are not set',
          () async {
        when(() => client.getFollowedSourceIds())
            .thenThrow(PreferencesStorageException('Favorite sources not set'));
        expect(
          () async => client.getFollowedSourceIds(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setFollowedSourceIds', () {
      test('sets the followed sources correctly', () async {
        when(() => client.setFollowedSourceIds(any())).thenAnswer((_) async {});
        await client.setFollowedSourceIds(['source3', 'source4']);
        verify(() => client.setFollowedSourceIds(['source3', 'source4']))
            .called(1);
      });
    });

    group('addFollowedSource', () {
      test('adds a followed source correctly', () async {
        when(() => client.addFollowedSource(any())).thenAnswer((_) async {});
        await client.addFollowedSource('source5');
        verify(() => client.addFollowedSource('source5')).called(1);
      });
    });

    group('removeFollowedSource', () {
      test('removes a followed source correctly', () async {
        when(() => client.removeFollowedSource(any())).thenAnswer((_) async {});
        await client.removeFollowedSource('source1');
        verify(() => client.removeFollowedSource('source1')).called(1);
      });

      test('throws SourceNotFoundException when source is not a favorite',
          () async {
        when(() => client.removeFollowedSource(any()))
            .thenThrow(SourceNotFoundException('source1'));
        expect(
          () async => client.removeFollowedSource('source1'),
          throwsA(isA<SourceNotFoundException>()),
        );
      });
    });

    group('getFollowedCategoryIds', () {
      test('returns the followed categories when they are set', () async {
        when(() => client.getFollowedCategoryIds())
            .thenAnswer((_) async => ['cat1', 'cat2']);
        expect(await client.getFollowedCategoryIds(), ['cat1', 'cat2']);
      });

      test(
          'throws PreferencesStorageException when followed categories are not set',
          () async {
        when(() => client.getFollowedCategoryIds()).thenThrow(
          PreferencesStorageException('Favorite categories not set'),
        );
        expect(
          () async => client.getFollowedCategoryIds(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setFollowedCategoryIds', () {
      test('sets the followed categories correctly', () async {
        when(() => client.setFollowedCategoryIds(any()))
            .thenAnswer((_) async {});
        await client.setFollowedCategoryIds(['cat3', 'cat4']);
        verify(() => client.setFollowedCategoryIds(['cat3', 'cat4'])).called(1);
      });
    });

    group('addFollowedCategory', () {
      test('adds a followed category correctly', () async {
        when(() => client.addFollowedCategory(any())).thenAnswer((_) async {});
        await client.addFollowedCategory('cat5');
        verify(() => client.addFollowedCategory('cat5')).called(1);
      });
    });

    group('removeFollowedCategory', () {
      test('removes a followed category correctly', () async {
        when(() => client.removeFollowedCategory(any()))
            .thenAnswer((_) async {});
        await client.removeFollowedCategory('cat1');
        verify(() => client.removeFollowedCategory('cat1')).called(1);
      });

      test('throws CategoryNotFoundException when category is not a favorite',
          () async {
        when(() => client.removeFollowedCategory(any()))
            .thenThrow(CategoryNotFoundException('cat1'));
        expect(
          () async => client.removeFollowedCategory('cat1'),
          throwsA(isA<CategoryNotFoundException>()),
        );
      });
    });

    group('getFollowedEventCountryIds', () {
      test('returns the followed event countries when they are set', () async {
        when(() => client.getFollowedEventCountryIds())
            .thenAnswer((_) async => ['country1', 'country2']);
        expect(
          await client.getFollowedEventCountryIds(),
          ['country1', 'country2'],
        );
      });

      test(
          'throws PreferencesStorageException when followed event countries are not set',
          () async {
        when(() => client.getFollowedEventCountryIds()).thenThrow(
          PreferencesStorageException('Favorite event countries not set'),
        );
        expect(
          () async => client.getFollowedEventCountryIds(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setFollowedEventCountryIds', () {
      test('sets the followed event countries correctly', () async {
        when(() => client.setFollowedEventCountryIds(any()))
            .thenAnswer((_) async {});
        await client.setFollowedEventCountryIds(['country3', 'country4']);
        verify(
          () => client.setFollowedEventCountryIds(['country3', 'country4']),
        ).called(1);
      });
    });

    group('addFollowedEventCountry', () {
      test('adds a followed event country correctly', () async {
        when(() => client.addFollowedEventCountry(any()))
            .thenAnswer((_) async {});
        await client.addFollowedEventCountry('country5');
        verify(() => client.addFollowedEventCountry('country5')).called(1);
      });
    });

    group('removeFollowedEventCountry', () {
      test('removes a followed event country correctly', () async {
        when(() => client.removeFollowedEventCountry(any()))
            .thenAnswer((_) async {});
        await client.removeFollowedEventCountry('country1');
        verify(() => client.removeFollowedEventCountry('country1')).called(1);
      });

      test(
          'throws CountryNotFoundException when event country is not a favorite',
          () async {
        when(() => client.removeFollowedEventCountry(any()))
            .thenThrow(CountryNotFoundException('country1'));
        expect(
          () async => client.removeFollowedEventCountry('country1'),
          throwsA(isA<CountryNotFoundException>()),
        );
      });
    });

    group('getHeadlineArticleTextSize', () {
      test('returns the headline article text size when it is set', () async {
        when(() => client.getHeadlineArticleTextSize())
            .thenAnswer((_) async => HeadlineArticleTextSize.medium);
        expect(await client.getHeadlineArticleTextSize(),
            HeadlineArticleTextSize.medium,);
      });

      test(
          'throws PreferencesStorageException when headline article text size is not set',
          () async {
        when(() => client.getHeadlineArticleTextSize()).thenThrow(
          PreferencesStorageException('Headline article text size not set'),
        );
        expect(
          () async => client.getHeadlineArticleTextSize(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setHeadlineArticleTextSize', () {
      test('sets the headline article text size correctly', () async {
        when(() => client.setHeadlineArticleTextSize(any()))
            .thenAnswer((_) async {});
        await client.setHeadlineArticleTextSize(HeadlineArticleTextSize.large);
        verify(() => client.setHeadlineArticleTextSize(
            HeadlineArticleTextSize.large,),).called(1);
      });
    });

    group('getAppFontSize', () {
      test('returns the app font size when it is set', () async {
        when(() => client.getAppFontSize())
            .thenAnswer((_) async => AppFontSize.medium);
        expect(await client.getAppFontSize(), AppFontSize.medium);
      });

      test('throws PreferencesStorageException when app font size is not set',
          () async {
        when(() => client.getAppFontSize())
            .thenThrow(PreferencesStorageException('App font size not set'));
        expect(
          () async => client.getAppFontSize(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setAppFontSize', () {
      test('sets the app font size correctly', () async {
        when(() => client.setAppFontSize(any())).thenAnswer((_) async {});
        await client.setAppFontSize(AppFontSize.large);
        verify(() => client.setAppFontSize(AppFontSize.large)).called(1);
      });
    });

    group('getSavedHeadlines', () {
      test('returns the saved headlines when they are set', () async {
        when(() => client.getSavedHeadlines())
            .thenAnswer((_) async => ['headline1', 'headline2']);
        expect(await client.getSavedHeadlines(), ['headline1', 'headline2']);
      });

      test(
          'throws PreferencesStorageException when saved headlines are not set',
          () async {
        when(() => client.getSavedHeadlines()).thenThrow(
          PreferencesStorageException('Saved headlines not set'),
        );
        expect(
          () async => client.getSavedHeadlines(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setSavedHeadlines', () {
      test('sets the saved headlines correctly', () async {
        when(() => client.setSavedHeadlines(any())).thenAnswer((_) async {});
        await client.setSavedHeadlines(['headline3', 'headline4']);
        verify(() => client.setSavedHeadlines(['headline3', 'headline4']))
            .called(1);
      });
    });

    group('addSavedHeadline', () {
      test('adds a saved headline correctly', () async {
        when(() => client.addSavedHeadline(any())).thenAnswer((_) async {});
        await client.addSavedHeadline('headline5');
        verify(() => client.addSavedHeadline('headline5')).called(1);
      });
    });

    group('removeSavedHeadline', () {
      test('removes a saved headline correctly', () async {
        when(() => client.removeSavedHeadline(any())).thenAnswer((_) async {});
        await client.removeSavedHeadline('headline1');
        verify(() => client.removeSavedHeadline('headline1')).called(1);
      });

      test('throws HeadlineNotFoundException when headline is not saved',
          () async {
        when(() => client.removeSavedHeadline(any()))
            .thenThrow(HeadlineNotFoundException('headline1'));
        expect(
          () async => client.removeSavedHeadline('headline1'),
          throwsA(isA<HeadlineNotFoundException>()),
        );
      });
    });

    group('removeAllSavedHeadlines', () {
      test('removes all saved headlines correctly', () async {
        when(() => client.removeAllSavedHeadlines()).thenAnswer((_) async {});
        await client.removeAllSavedHeadlines();
        verify(() => client.removeAllSavedHeadlines()).called(1);
      });
    });

    group('removeAllFollowedSourceIds', () {
      test('removes all followed sources correctly', () async {
        when(() => client.removeAllFollowedSourceIds())
            .thenAnswer((_) async {});
        await client.removeAllFollowedSourceIds();
        verify(() => client.removeAllFollowedSourceIds()).called(1);
      });
    });

    group('removeAllFollowedCategoryIds', () {
      test('removes all followed categories correctly', () async {
        when(() => client.removeAllFollowedCategoryIds())
            .thenAnswer((_) async {});
        await client.removeAllFollowedCategoryIds();
        verify(() => client.removeAllFollowedCategoryIds()).called(1);
      });
    });

    group('removeAllFollowedEventCountryIds', () {
      test('removes all followed event countries correctly', () async {
        when(() => client.removeAllFollowedEventCountryIds())
            .thenAnswer((_) async {});
        await client.removeAllFollowedEventCountryIds();
        verify(() => client.removeAllFollowedEventCountryIds()).called(1);
      });
    });

    group('getContentDensity', () {
      test('returns the content density when it is set', () async {
        when(() => client.getContentDensity())
            .thenAnswer((_) async => ContentDensity.compact);
        expect(await client.getContentDensity(), ContentDensity.compact);
      });

      test('throws PreferencesStorageException when content density is not set',
          () async {
        when(() => client.getContentDensity()).thenThrow(
          PreferencesStorageException('Content density not set'),
        );
        expect(
          () async => client.getContentDensity(),
          throwsA(isA<PreferencesStorageException>()),
        );
      });
    });

    group('setContentDensity', () {
      test('sets the content density correctly', () async {
        when(() => client.setContentDensity(any())).thenAnswer((_) async {});
        await client.setContentDensity(ContentDensity.comfortable);
        verify(() => client.setContentDensity(ContentDensity.comfortable))
            .called(1);
      });
    });
  });
}
