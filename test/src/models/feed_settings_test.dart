import 'package:ht_preferences_client/src/enums/feed_list_tile_type.dart';
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('FeedSettings', () {
    // Sample enum value
    const sampleTileType = FeedListTileType.imageTop; // Use a valid enum value

    // Sample FeedSettings instance
    const feedSettings = FeedSettings(feedListTileType: sampleTileType);

    // Sample JSON map corresponding to the FeedSettings instance
    final feedSettingsJson = {
      // Enum value is serialized as string using its name
      'feedListTileType': 'imageTop',
    };

    test('can be instantiated', () {
      expect(
        const FeedSettings(
          feedListTileType:
              FeedListTileType.imageStart, // Use another valid enum value
        ),
        isNotNull,
      );
    });

    test('supports value equality', () {
      expect(
        feedSettings,
        equals(const FeedSettings(feedListTileType: sampleTileType)),
      );
    });

    test('props are correct', () {
      expect(feedSettings.props, equals([sampleTileType]));
    });

    group('fromJson', () {
      test('works correctly', () {
        expect(FeedSettings.fromJson(feedSettingsJson), equals(feedSettings));
      });

      test('throws ArgumentError for invalid FeedListTileType string', () {
        final invalidJson = {'feedListTileType': 'invalidType'};
        expect(
          () => FeedSettings.fromJson(invalidJson),
          throwsA(isA<ArgumentError>()), // $enumDecode throws ArgumentError
        );
      });
    });

    group('toJson', () {
      test('works correctly', () {
        expect(feedSettings.toJson(), equals(feedSettingsJson));
      });
    });
  });
}
