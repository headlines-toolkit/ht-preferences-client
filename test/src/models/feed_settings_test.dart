import 'package:ht_preferences_client/src/enums/enums.dart';
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('FeedSettings', () {
    const feedListTileType = FeedListTileType.imageTop; // Corrected enum value
    const feedSettings = FeedSettings(feedListTileType: feedListTileType);

    final validJson = {
      'feedListTileType': 'imageTop',
    }; // Corrected string value

    group('fromJson', () {
      test('creates FeedSettings from valid JSON', () {
        expect(FeedSettings.fromJson(validJson), equals(feedSettings));
      });

      test('throws FormatException for missing feedListTileType', () {
        final invalidJson = <String, dynamic>{}; // Empty JSON
        expect(
          () => FeedSettings.fromJson(invalidJson),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains('Missing required field "feedListTileType"'),
            ),
          ),
        );
      });

      test(
        'throws FormatException for invalid feedListTileType enum value',
        () {
          final invalidJson = {'feedListTileType': 'invalid_type'};
          expect(
            () => FeedSettings.fromJson(invalidJson),
            throwsA(
              isA<FormatException>().having(
                (e) => e.message,
                'message',
                contains('Invalid enum value'),
              ),
            ),
          );
        },
      );
    });

    group('toJson', () {
      test('converts FeedSettings to valid JSON', () {
        expect(feedSettings.toJson(), equals(validJson));
      });
    });

    group('Equatable', () {
      test('supports value equality', () {
        expect(
          const FeedSettings(
            feedListTileType: FeedListTileType.imageTop,
          ), // Corrected enum value
          equals(
            const FeedSettings(
              feedListTileType: FeedListTileType.imageTop,
            ), // Corrected enum value
          ),
        );
      });

      test('props are correct', () {
        expect(feedSettings.props, equals([feedListTileType]));
      });
    });
  });
}
