import 'package:ht_preferences_client/src/exceptions.dart';
import 'package:test/test.dart';

void main() {
  group('Custom Exceptions', () {
    const testMessage = 'Something went wrong';

    // Test base exceptions first
    group('PreferenceNotFoundException', () {
      test('can be instantiated and toString works', () {
        final exception = PreferenceNotFoundException(testMessage);
        expect(exception, isA<Exception>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
    });

    group('PreferenceUpdateException', () {
      test('can be instantiated and toString works', () {
        final exception = PreferenceUpdateException(testMessage);
        expect(exception, isA<Exception>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });

    // Test specific exceptions inheriting from base ones
    group('AppSettings Exceptions', () {
      test('AppSettingsNotFoundException', () {
        final exception = AppSettingsNotFoundException(testMessage);
        expect(exception, isA<PreferenceNotFoundException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
      test('AppSettingsUpdateException', () {
        final exception = AppSettingsUpdateException(testMessage);
        expect(exception, isA<PreferenceUpdateException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });

    group('ArticleSettings Exceptions', () {
      test('ArticleSettingsNotFoundException', () {
        final exception = ArticleSettingsNotFoundException(testMessage);
        expect(exception, isA<PreferenceNotFoundException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
      test('ArticleSettingsUpdateException', () {
        final exception = ArticleSettingsUpdateException(testMessage);
        expect(exception, isA<PreferenceUpdateException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });

    group('ThemeSettings Exceptions', () {
      test('ThemeSettingsNotFoundException', () {
        final exception = ThemeSettingsNotFoundException(testMessage);
        expect(exception, isA<PreferenceNotFoundException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
      test('ThemeSettingsUpdateException', () {
        final exception = ThemeSettingsUpdateException(testMessage);
        expect(exception, isA<PreferenceUpdateException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });

    group('BookmarkedHeadlines Exceptions', () {
      test('BookmarkedHeadlinesNotFoundException', () {
        final exception = BookmarkedHeadlinesNotFoundException(testMessage);
        expect(exception, isA<PreferenceNotFoundException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
      test('BookmarkedHeadlinesUpdateException', () {
        final exception = BookmarkedHeadlinesUpdateException(testMessage);
        expect(exception, isA<PreferenceUpdateException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });

    group('FollowedSources Exceptions', () {
      test('FollowedSourcesNotFoundException', () {
        final exception = FollowedSourcesNotFoundException(testMessage);
        expect(exception, isA<PreferenceNotFoundException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
      test('FollowedSourcesUpdateException', () {
        final exception = FollowedSourcesUpdateException(testMessage);
        expect(exception, isA<PreferenceUpdateException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });

    group('FollowedCategories Exceptions', () {
      test('FollowedCategoriesNotFoundException', () {
        final exception = FollowedCategoriesNotFoundException(testMessage);
        expect(exception, isA<PreferenceNotFoundException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
      test('FollowedCategoriesUpdateException', () {
        final exception = FollowedCategoriesUpdateException(testMessage);
        expect(exception, isA<PreferenceUpdateException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });

    group('FollowedEventCountries Exceptions', () {
      test('FollowedEventCountriesNotFoundException', () {
        final exception = FollowedEventCountriesNotFoundException(testMessage);
        expect(exception, isA<PreferenceNotFoundException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
      test('FollowedEventCountriesUpdateException', () {
        final exception = FollowedEventCountriesUpdateException(testMessage);
        expect(exception, isA<PreferenceUpdateException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });

    group('HeadlineReadingHistory Exceptions', () {
      test('HeadlineReadingHistoryNotFoundException', () {
        final exception = HeadlineReadingHistoryNotFoundException(testMessage);
        expect(exception, isA<PreferenceNotFoundException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
      test('HeadlineReadingHistoryUpdateException', () {
        final exception = HeadlineReadingHistoryUpdateException(testMessage);
        expect(exception, isA<PreferenceUpdateException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });

    group('FeedSettings Exceptions', () {
      test('FeedSettingsNotFoundException', () {
        final exception = FeedSettingsNotFoundException(testMessage);
        expect(exception, isA<PreferenceNotFoundException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
      test('FeedSettingsUpdateException', () {
        final exception = FeedSettingsUpdateException(testMessage);
        expect(exception, isA<PreferenceUpdateException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });

    group('NotificationSettings Exceptions', () {
      test('NotificationSettingsNotFoundException', () {
        final exception = NotificationSettingsNotFoundException(testMessage);
        expect(exception, isA<PreferenceNotFoundException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceNotFoundException: $testMessage'),
        );
      });
      test('NotificationSettingsUpdateException', () {
        final exception = NotificationSettingsUpdateException(testMessage);
        expect(exception, isA<PreferenceUpdateException>());
        expect(exception.message, equals(testMessage));
        expect(
          exception.toString(),
          equals('PreferenceUpdateException: $testMessage'),
        );
      });
    });
  });
}
