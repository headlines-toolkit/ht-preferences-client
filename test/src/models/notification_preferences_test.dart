import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('NotificationPreferences', () {
    // Sample data
    const sampleEnabled = true;
    const sampleCategoryNotifications = {'cat1': true, 'cat2': false};
    const sampleSourceNotifications = {'srcA': false, 'srcB': true};

    // Sample NotificationPreferences instance
    const notificationPreferences = NotificationPreferences(
      enabled: sampleEnabled,
      categoryNotifications: sampleCategoryNotifications,
      sourceNotifications: sampleSourceNotifications,
    );

    // Sample JSON map
    final notificationPreferencesJson = {
      'enabled': sampleEnabled,
      'categoryNotifications': sampleCategoryNotifications,
      'sourceNotifications': sampleSourceNotifications,
    };

    test('can be instantiated', () {
      expect(
        const NotificationPreferences(
          enabled: false,
          categoryNotifications: {},
          sourceNotifications: {},
        ),
        isNotNull,
      );
    });

    test('supports value equality', () {
      expect(
        notificationPreferences,
        equals(
          const NotificationPreferences(
            enabled: sampleEnabled,
            categoryNotifications: sampleCategoryNotifications,
            sourceNotifications: sampleSourceNotifications,
          ),
        ),
      );
      expect(
        notificationPreferences,
        isNot(
          equals(
            const NotificationPreferences(
              enabled: !sampleEnabled, // Different enabled status
              categoryNotifications: sampleCategoryNotifications,
              sourceNotifications: sampleSourceNotifications,
            ),
          ),
        ),
      );
      expect(
        notificationPreferences,
        isNot(
          equals(
            const NotificationPreferences(
              enabled: sampleEnabled,
              categoryNotifications: {'cat1': false}, // Different map content
              sourceNotifications: sampleSourceNotifications,
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

      test('works correctly with empty maps', () {
        final jsonWithEmptyMaps = {
          'enabled': true,
          'categoryNotifications': <String, bool>{},
          'sourceNotifications': <String, bool>{},
        };
        expect(
          NotificationPreferences.fromJson(jsonWithEmptyMaps),
          equals(
            const NotificationPreferences(
              enabled: true,
              categoryNotifications: {},
              sourceNotifications: {},
            ),
          ),
        );
      });

      // Note: json_serializable handles missing keys by assigning null,
      // but these fields are non-nullable. It will throw during generation
      // or runtime if required fields are missing in the JSON.
      // Testing for missing keys is implicitly covered by ensuring
      // the factory constructor requires them.
    });

    group('toJson', () {
      test('works correctly', () {
        expect(
          notificationPreferences.toJson(),
          equals(notificationPreferencesJson),
        );
      });

      test('works correctly with empty maps', () {
        const prefsWithEmptyMaps = NotificationPreferences(
          enabled: true,
          categoryNotifications: {},
          sourceNotifications: {},
        );
        expect(
          prefsWithEmptyMaps.toJson(),
          equals({
            'enabled': true,
            'categoryNotifications': <String, bool>{},
            'sourceNotifications': <String, bool>{},
          }),
        );
      });
    });
  });
}
