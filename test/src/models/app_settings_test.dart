import 'package:ht_preferences_client/src/enums/enums.dart';
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('AppSettings', () {
    const appFontSize = AppFontSize.medium;
    const appFontType = AppFontType.roboto;
    const appSettings = AppSettings(
      appFontSize: appFontSize,
      appFontType: appFontType,
    );

    final validJson = {'appFontSize': 'medium', 'appFontType': 'roboto'};

    group('fromJson', () {
      test('creates AppSettings from valid JSON', () {
        expect(AppSettings.fromJson(validJson), equals(appSettings));
      });

      test('throws FormatException for missing appFontSize', () {
        final invalidJson = {'appFontType': 'roboto'};
        expect(
          () => AppSettings.fromJson(invalidJson),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains('Missing required field "appFontSize"'),
            ),
          ),
        );
      });

      test('throws FormatException for missing appFontType', () {
        final invalidJson = {'appFontSize': 'medium'};
        expect(
          () => AppSettings.fromJson(invalidJson),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains('Missing required field "appFontType"'),
            ),
          ),
        );
      });

      test('throws FormatException for invalid appFontSize enum value', () {
        final invalidJson = {
          'appFontSize': 'invalid_size',
          'appFontType': 'roboto',
        };
        expect(
          () => AppSettings.fromJson(invalidJson),
          throwsA(
            isA<FormatException>().having(
              (e) => e.message,
              'message',
              contains('Invalid enum value'),
            ),
          ),
        );
      });

      test('throws FormatException for invalid appFontType enum value', () {
        final invalidJson = {
          'appFontSize': 'medium',
          'appFontType': 'invalid_type',
        };
        expect(
          () => AppSettings.fromJson(invalidJson),
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
      test('converts AppSettings to valid JSON', () {
        expect(appSettings.toJson(), equals(validJson));
      });
    });

    group('Equatable', () {
      test('supports value equality', () {
        expect(
          const AppSettings(
            appFontSize: AppFontSize.medium,
            appFontType: AppFontType.roboto,
          ),
          equals(
            const AppSettings(
              appFontSize: AppFontSize.medium,
              appFontType: AppFontType.roboto,
            ),
          ),
        );
      });

      test('props are correct', () {
        expect(appSettings.props, equals([appFontSize, appFontType]));
      });
    });
  });
}
