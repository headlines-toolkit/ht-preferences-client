import 'package:ht_preferences_client/src/enums/app_theme_mode.dart';
import 'package:ht_preferences_client/src/enums/app_theme_name.dart';
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('ThemeSettings', () {
    // Sample enum values
    const sampleThemeMode = AppThemeMode.dark;
    const sampleThemeName = AppThemeName.blue;

    // Sample ThemeSettings instance
    const themeSettings = ThemeSettings(
      themeMode: sampleThemeMode,
      themeName: sampleThemeName,
    );

    // Sample JSON map
    final themeSettingsJson = {
      'themeMode': 'dark', // Enum values serialized as strings
      'themeName': 'blue',
    };

    test('can be instantiated', () {
      expect(
        const ThemeSettings(
          themeMode: AppThemeMode.light,
          themeName: AppThemeName.red, // Use a valid enum value
        ),
        isNotNull,
      );
    });

    test('supports value equality', () {
      expect(
        themeSettings,
        equals(
          const ThemeSettings(
            themeMode: sampleThemeMode,
            themeName: sampleThemeName,
          ),
        ),
      );
    });

    test('props are correct', () {
      expect(themeSettings.props, equals([sampleThemeMode, sampleThemeName]));
    });

    group('fromJson', () {
      test('works correctly', () {
        expect(
          ThemeSettings.fromJson(themeSettingsJson),
          equals(themeSettings),
        );
      });

      test('throws ArgumentError for invalid AppThemeMode string', () {
        final invalidJson = {...themeSettingsJson, 'themeMode': 'invalidMode'};
        expect(
          () => ThemeSettings.fromJson(invalidJson),
          throwsA(isA<ArgumentError>()), // $enumDecode throws ArgumentError
        );
      });

      test('throws ArgumentError for invalid AppThemeName string', () {
        final invalidJson = {...themeSettingsJson, 'themeName': 'invalidName'};
        expect(
          () => ThemeSettings.fromJson(invalidJson),
          throwsA(isA<ArgumentError>()), // $enumDecode throws ArgumentError
        );
      });
    });

    group('toJson', () {
      test('works correctly', () {
        expect(themeSettings.toJson(), equals(themeSettingsJson));
      });
    });
  });
}
