import 'package:ht_preferences_client/src/enums/font_size.dart';
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('ArticleSettings', () {
    // Sample enum value
    const sampleFontSize = FontSize.medium;

    // Sample ArticleSettings instance
    const articleSettings = ArticleSettings(articleFontSize: sampleFontSize);

    // Sample JSON map corresponding to the ArticleSettings instance
    final articleSettingsJson = {
      'articleFontSize': 'medium', // Enum value is serialized as string
    };

    test('can be instantiated', () {
      expect(const ArticleSettings(articleFontSize: FontSize.large), isNotNull);
    });

    test('supports value equality', () {
      expect(
        articleSettings,
        equals(const ArticleSettings(articleFontSize: sampleFontSize)),
      );
    });

    test('props are correct', () {
      expect(articleSettings.props, equals([sampleFontSize]));
    });

    group('fromJson', () {
      test('works correctly', () {
        expect(
          ArticleSettings.fromJson(articleSettingsJson),
          equals(articleSettings),
        );
      });

      test('throws ArgumentError for invalid FontSize string', () {
        final invalidJson = {'articleFontSize': 'invalidSize'};
        expect(
          () => ArticleSettings.fromJson(invalidJson),
          throwsA(isA<ArgumentError>()), // $enumDecode throws ArgumentError
        );
      });
    });

    group('toJson', () {
      test('works correctly', () {
        expect(articleSettings.toJson(), equals(articleSettingsJson));
      });
    });
  });
}
