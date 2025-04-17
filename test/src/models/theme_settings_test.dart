import 'package:ht_preferences_client/src/enums/enums.dart';
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('ThemeSettings', () {
    const themeMode = AppThemeMode.dark;
    const themeName = AppThemeName.blue;
    const themeSettings = ThemeSettings(
      themeMode: themeMode,
      themeName: themeName,
    );

    final validJson = {'themeMode': 'dark', 'themeName': 'blue'};

    group('fromJson', () {
      test('creates ThemeSettings from valid JSON', () {
        expect(ThemeSettings.fromJson(validJson), equals(themeSettings));
      });

      test('throws FormatException for missing themeMode', () {
        final invalidJson = {'themeName': 'blue'};
        expect(
          () => ThemeSettings.fromJson(invalidJson),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains('Missing required field "themeMode"'),
            ),
          ),
        );
      });

      test('throws FormatException for missing themeName', () {
        final invalidJson = {'themeMode': 'dark'};
        expect(
          () => ThemeSettings.fromJson(invalidJson),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains('Missing required field "themeName"'),
            ),
          ),
        );
      });

      test('throws FormatException for invalid themeMode enum value', () {
        final invalidJson = {'themeMode': 'invalid_mode', 'themeName': 'blue'};
        expect(
          () => ThemeSettings.fromJson(invalidJson),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains('Invalid enum value'),
            ),
          ),
        );
      });

      test('throws FormatException for invalid themeName enum value', () {
        final invalidJson = {'themeMode': 'dark', 'themeName': 'invalid_name'};
        expect(
          () => ThemeSettings.fromJson(invalidJson),
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
      test('converts ThemeSettings to valid JSON', () {
        expect(themeSettings.toJson(), equals(validJson));
      });
    });

    group('Equatable', () {
      test('supports value equality', () {
        expect(
          const ThemeSettings(
            themeMode: AppThemeMode.dark,
            themeName: AppThemeName.blue,
          ),
          equals(
            const ThemeSettings(
              themeMode: AppThemeMode.dark,
              themeName: AppThemeName.blue,
            ),
          ),
        );
      });

      test('props are correct', () {
        expect(themeSettings.props, equals([themeMode, themeName]));
      });
    });
  });
}
