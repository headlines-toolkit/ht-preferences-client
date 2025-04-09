// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThemeSettings _$ThemeSettingsFromJson(Map<String, dynamic> json) =>
    ThemeSettings(
      themeMode: $enumDecode(_$AppThemeModeEnumMap, json['themeMode']),
      themeName: $enumDecode(_$AppThemeNameEnumMap, json['themeName']),
    );

Map<String, dynamic> _$ThemeSettingsToJson(ThemeSettings instance) =>
    <String, dynamic>{
      'themeMode': _$AppThemeModeEnumMap[instance.themeMode]!,
      'themeName': _$AppThemeNameEnumMap[instance.themeName]!,
    };

const _$AppThemeModeEnumMap = {
  AppThemeMode.system: 'system',
  AppThemeMode.light: 'light',
  AppThemeMode.dark: 'dark',
};

const _$AppThemeNameEnumMap = {
  AppThemeName.grey: 'grey',
  AppThemeName.red: 'red',
  AppThemeName.blue: 'blue',
};
