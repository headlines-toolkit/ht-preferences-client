import 'package:ht_preferences_client/src/enums/app_font_type.dart';
import 'package:ht_preferences_client/src/enums/font_size.dart';
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('AppSettings', () {
    // Sample enum values
    const sampleFontSize = FontSize.medium;
    const sampleFontType = AppFontType.roboto;

    // Sample AppSettings instance
    const appSettings = AppSettings(
      appFontSize: sampleFontSize,
      appFontType: sampleFontType,
    );

    // Sample JSON map corresponding to the AppSettings instance
    final appSettingsJson = {
      'appFontSize': 'medium', // Enum values are serialized as strings
      'appFontType': 'roboto',
    };

    test('can be instantiated', () {
      expect(
        const AppSettings(
          appFontSize: FontSize.large,
          appFontType: AppFontType.openSans,
        ),
        isNotNull,
      );
    });

    test('supports value equality', () {
      expect(
        appSettings,
        equals(
          const AppSettings(
            appFontSize: sampleFontSize,
            appFontType: sampleFontType,
          ),
        ),
      );
    });

    test('props are correct', () {
      expect(appSettings.props, equals([sampleFontSize, sampleFontType]));
    });

    group('fromJson', () {
      test('works correctly', () {
        expect(AppSettings.fromJson(appSettingsJson), equals(appSettings));
      });

      test('throws ArgumentError for invalid FontSize string', () {
        final invalidJson = {...appSettingsJson, 'appFontSize': 'invalidSize'};
        expect(
          () => AppSettings.fromJson(invalidJson),
          throwsA(isA<ArgumentError>()), // $enumDecode throws ArgumentError
        );
      });

      test('throws ArgumentError for invalid AppFontType string', () {
        final invalidJson = {...appSettingsJson, 'appFontType': 'invalidType'};
        expect(
          () => AppSettings.fromJson(invalidJson),
          throwsA(isA<ArgumentError>()), // $enumDecode throws ArgumentError
        );
      });
    });

    group('toJson', () {
      test('works correctly', () {
        expect(appSettings.toJson(), equals(appSettingsJson));
      });
    });
  });
}
