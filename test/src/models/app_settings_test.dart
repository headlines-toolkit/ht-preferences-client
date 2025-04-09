import 'package:ht_preferences_client/src/enums/app_font_size.dart';
import 'package:ht_preferences_client/src/enums/enums.dart';
import 'package:ht_preferences_client/src/models/app_settings.dart';
import 'package:test/test.dart';

void main() {
  group('AppSettings', () {
    test('can be created fromJson with small font size', () {
      final appSettings = AppSettings.fromJson(const {
        'appFontSize': 'small',
        'appFontType': 'roboto',
      });
      expect(appSettings.appFontSize, AppFontSize.small);
      expect(appSettings.appFontType, AppFontType.roboto);
    });

    test('can be created fromJson with medium font size', () {
      final appSettings = AppSettings.fromJson(const {
        'appFontSize': 'medium',
        'appFontType': 'roboto',
      });
      expect(appSettings.appFontSize, AppFontSize.medium);
      expect(appSettings.appFontType, AppFontType.roboto);
    });

    test('can be created fromJson with large font size', () {
      final appSettings = AppSettings.fromJson(const {
        'appFontSize': 'large',
        'appFontType': 'roboto',
      });
      expect(appSettings.appFontSize, AppFontSize.large);
      expect(appSettings.appFontType, AppFontType.roboto);
    });

    test('can be converted toJson with small font size', () {
      const appSettings = AppSettings(
        appFontSize: AppFontSize.small,
        appFontType: AppFontType.roboto,
      );
      final json = appSettings.toJson();
      expect(json['appFontSize'], 'small');
      expect(json['appFontType'], 'roboto');
    });

    test('can be converted toJson with medium font size', () {
      const appSettings = AppSettings(
        appFontSize: AppFontSize.medium,
        appFontType: AppFontType.roboto,
      );
      final json = appSettings.toJson();
      expect(json['appFontSize'], 'medium');
      expect(json['appFontType'], 'roboto');
    });

    test('can be converted toJson with large font size', () {
      const appSettings = AppSettings(
        appFontSize: AppFontSize.large,
        appFontType: AppFontType.roboto,
      );
      final json = appSettings.toJson();
      expect(json['appFontSize'], 'large');
      expect(json['appFontType'], 'roboto');
    });
  });
}
