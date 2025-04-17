//
// ignore_for_file: lines_longer_than_80_chars

import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('NotificationSettings', () {
    const enabled = true;
    const categoryNotifications = ['cat1', 'cat2'];
    const sourceNotifications = ['src1'];
    const followedEventCountryIds = ['US', 'GB'];

    const notificationSettings = NotificationSettings(
      enabled: enabled,
      categoryNotifications: categoryNotifications,
      sourceNotifications: sourceNotifications,
      followedEventCountryIds: followedEventCountryIds,
    );

    const notificationSettingsMinimal = NotificationSettings(enabled: false);

    final validJson = {
      'enabled': enabled,
      'categoryNotifications': categoryNotifications,
      'sourceNotifications': sourceNotifications,
      'followedEventCountryIds': followedEventCountryIds,
    };

    final validJsonMinimal = {
      'enabled': false,
      'categoryNotifications': <String>[],
      'sourceNotifications': <String>[],
      'followedEventCountryIds': <String>[],
    };

    final validJsonWithNullLists = {
      'enabled': true,
    }; // Lists should default to empty

    group('fromJson', () {
      test('creates NotificationSettings from valid full JSON', () {
        expect(
          NotificationSettings.fromJson(validJson),
          equals(notificationSettings),
        );
      });

      test('creates NotificationSettings from valid minimal JSON', () {
        final settings = NotificationSettings.fromJson(validJsonMinimal);
        expect(settings.enabled, isFalse);
        expect(settings.categoryNotifications, isEmpty);
        expect(settings.sourceNotifications, isEmpty);
        expect(settings.followedEventCountryIds, isEmpty);
      });

      test(
        'creates NotificationSettings with empty lists from JSON with null lists',
        () {
          final settings = NotificationSettings.fromJson(
            validJsonWithNullLists,
          );
          expect(settings.enabled, isTrue);
          expect(settings.categoryNotifications, isEmpty);
          expect(settings.sourceNotifications, isEmpty);
          expect(settings.followedEventCountryIds, isEmpty);
        },
      );

      test('throws FormatException for missing enabled field', () {
        final invalidJson = {
          'categoryNotifications': categoryNotifications,
          'sourceNotifications': sourceNotifications,
          'followedEventCountryIds': followedEventCountryIds,
        };
        expect(
          () => NotificationSettings.fromJson(invalidJson),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains('Missing required field "enabled"'),
            ),
          ),
        );
      });

      test('handles JSON with non-string elements in lists gracefully', () {
        final jsonWithInvalidList = {
          'enabled': true,
          'categoryNotifications': ['cat1', 123, 'cat3'], // Contains an int
          'sourceNotifications': null,
          'followedEventCountryIds': <dynamic>[],
        };
        final settings = NotificationSettings.fromJson(jsonWithInvalidList);
        expect(settings.enabled, isTrue);
        // Should filter out non-string elements
        expect(settings.categoryNotifications, equals(['cat1', 'cat3']));
        expect(settings.sourceNotifications, isEmpty);
        expect(settings.followedEventCountryIds, isEmpty);
      });
    });

    group('toJson', () {
      test('converts full NotificationSettings to valid JSON', () {
        expect(notificationSettings.toJson(), equals(validJson));
      });

      test('converts minimal NotificationSettings to valid JSON', () {
        expect(notificationSettingsMinimal.toJson(), equals(validJsonMinimal));
      });
    });

    group('Equatable', () {
      test('supports value equality', () {
        expect(
          const NotificationSettings(
            enabled: true,
            categoryNotifications: ['cat1', 'cat2'],
            sourceNotifications: ['src1'],
            followedEventCountryIds: ['US', 'GB'],
          ),
          equals(
            const NotificationSettings(
              enabled: true,
              categoryNotifications: ['cat1', 'cat2'],
              sourceNotifications: ['src1'],
              followedEventCountryIds: ['US', 'GB'],
            ),
          ),
        );
      });

      test('supports value equality for minimal instance', () {
        expect(
          const NotificationSettings(enabled: false),
          equals(const NotificationSettings(enabled: false)),
        );
      });

      test('props are correct for full instance', () {
        expect(
          notificationSettings.props,
          equals([
            enabled,
            categoryNotifications,
            sourceNotifications,
            followedEventCountryIds,
          ]),
        );
      });

      test('props are correct for minimal instance', () {
        expect(
          notificationSettingsMinimal.props,
          equals([
            false, // enabled
            const <String>[], // categoryNotifications
            const <String>[], // sourceNotifications
            const <String>[], // followedEventCountryIds
          ]),
        );
      });
    });
  });
}
