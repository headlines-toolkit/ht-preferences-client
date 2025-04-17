import 'package:ht_preferences_client/src/enums/enums.dart';
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('ArticleSettings', () {
    const fontSize = AppFontSize.large; // Using AppFontSize as requested
    const articleSettings = ArticleSettings(fontSize: fontSize);

    final validJson = {'fontSize': 'large'}; // Renamed key

    group('fromJson', () {
      test('creates ArticleSettings from valid JSON', () {
        expect(ArticleSettings.fromJson(validJson), equals(articleSettings));
      });

      test('throws FormatException for missing fontSize', () {
        final invalidJson = <String, dynamic>{}; // Empty JSON
        expect(
          () => ArticleSettings.fromJson(invalidJson),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains('Missing required field "fontSize"'),
            ),
          ),
        );
      });

      test('throws FormatException for invalid fontSize enum value', () {
        final invalidJson = {'fontSize': 'invalid_size'};
        expect(
          () => ArticleSettings.fromJson(invalidJson),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains('Invalid enum value'),
            ),
          ),
        );
      });
    });

    group('toJson', () {
      test('converts ArticleSettings to valid JSON', () {
        expect(articleSettings.toJson(), equals(validJson));
      });
    });

    group('Equatable', () {
      test('supports value equality', () {
        expect(
          const ArticleSettings(fontSize: AppFontSize.large),
          equals(const ArticleSettings(fontSize: AppFontSize.large)),
        );
      });

      test('props are correct', () {
        expect(articleSettings.props, equals([fontSize]));
      });
    });
  });
}
