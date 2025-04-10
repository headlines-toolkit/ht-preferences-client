import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('NotificationPreferences', () {
    // Sample data
    const sampleEnabled = true;
    const sampleCategoryNotifications = ['cat1', 'cat3'];
    const sampleSourceNotifications = ['srcB'];
    const sampleFollowedEventCountryIds = ['uk', 'us'];

    // Sample NotificationPreferences instance
    const notificationPreferences = NotificationPreferences(
      enabled: sampleEnabled,
      categoryNotifications: sampleCategoryNotifications,
      sourceNotifications: sampleSourceNotifications,
      followedEventCountryIds: sampleFollowedEventCountryIds,
    );

    // Sample JSON map
    final notificationPreferencesJson = {
      'enabled': sampleEnabled,
      'categoryNotifications': sampleCategoryNotifications,
      'sourceNotifications': sampleSourceNotifications,
      'followedEventCountryIds': sampleFollowedEventCountryIds,
    };

    test('can be instantiated with default empty lists', () {
      expect(
        const NotificationPreferences(enabled: false),
        isA<NotificationPreferences>()
            .having((p) => p.enabled, 'enabled', false)
            .having(
              (p) => p.categoryNotifications,
              'categoryNotifications',
              isEmpty,
            )
            .having(
              (p) => p.sourceNotifications,
              'sourceNotifications',
              isEmpty,
            )
            .having(
              (p) => p.followedEventCountryIds,
              'followedEventCountryIds',
              isEmpty,
            ),
      );
    });

    test('can be instantiated with provided lists', () {
      expect(
        const NotificationPreferences(
          enabled: true,
          categoryNotifications: ['cat1'],
          sourceNotifications: ['srcA'],
          followedEventCountryIds: ['de'],
        ),
        isNotNull,
      );
    });

    test('supports value equality', () {
      // Test equality with the same instance
      expect(
        notificationPreferences,
        equals(
          const NotificationPreferences(
            enabled: sampleEnabled,
            categoryNotifications: sampleCategoryNotifications,
            sourceNotifications: sampleSourceNotifications,
            followedEventCountryIds: sampleFollowedEventCountryIds,
          ),
        ),
      );

      // Test inequality with different enabled status
      expect(
        notificationPreferences,
        isNot(
          equals(
            const NotificationPreferences(
              enabled: !sampleEnabled,
              categoryNotifications: sampleCategoryNotifications,
              sourceNotifications: sampleSourceNotifications,
              followedEventCountryIds: sampleFollowedEventCountryIds,
            ),
          ),
        ),
      );

      // Test inequality with different category list
      expect(
        notificationPreferences,
        isNot(
          equals(
            const NotificationPreferences(
              enabled: sampleEnabled,
              categoryNotifications: ['cat1'], // Different list
              sourceNotifications: sampleSourceNotifications,
              followedEventCountryIds: sampleFollowedEventCountryIds,
            ),
          ),
        ),
      );

      // Test inequality with different source list
      expect(
        notificationPreferences,
        isNot(
          equals(
            const NotificationPreferences(
              enabled: sampleEnabled,
              categoryNotifications: sampleCategoryNotifications,
              sourceNotifications: ['srcC'], // Different list
              followedEventCountryIds: sampleFollowedEventCountryIds,
            ),
          ),
        ),
      );

      // Test inequality with different country list
      expect(
        notificationPreferences,
        isNot(
          equals(
            const NotificationPreferences(
              enabled: sampleEnabled,
              categoryNotifications: sampleCategoryNotifications,
              sourceNotifications: sampleSourceNotifications,
              followedEventCountryIds: ['fr'], // Different list
            ),
          ),
        ),
      );
    });

    test('props are correct', () {
      expect(
        notificationPreferences.props,
        equals([
          sampleEnabled,
          sampleCategoryNotifications,
          sampleSourceNotifications,
          sampleFollowedEventCountryIds,
        ]),
      );
    });

    group('fromJson', () {
      test('works correctly with full data', () {
        expect(
          NotificationPreferences.fromJson(notificationPreferencesJson),
          equals(notificationPreferences),
        );
      });

      test('works correctly with empty lists', () {
        final jsonWithEmptyLists = {
          'enabled': true,
          'categoryNotifications': <String>[],
          'sourceNotifications': <String>[],
          'followedEventCountryIds': <String>[],
        };
        expect(
          NotificationPreferences.fromJson(jsonWithEmptyLists),
          equals(const NotificationPreferences(enabled: true)),
        );
      });

      test('works correctly when lists are missing (should use defaults)', () {
        final jsonWithMissingLists = {'enabled': true};
        expect(
          NotificationPreferences.fromJson(jsonWithMissingLists),
          equals(const NotificationPreferences(enabled: true)),
        );
      });

      // Note: json_serializable handles missing 'enabled' by throwing
      // if it's required and non-nullable without a default.
    });

    group('toJson', () {
      test('works correctly with full data', () {
        expect(
          notificationPreferences.toJson(),
          equals(notificationPreferencesJson),
        );
      });

      test('works correctly with default empty lists', () {
        const prefsWithEmptyLists = NotificationPreferences(enabled: true);
        expect(
          prefsWithEmptyLists.toJson(),
          equals({
            'enabled': true,
            'categoryNotifications': <String>[],
            'sourceNotifications': <String>[],
            'followedEventCountryIds': <String>[],
          }),
        );
      });
    });
  });
}
