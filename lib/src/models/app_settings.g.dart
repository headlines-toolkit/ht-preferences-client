// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) => AppSettings(
  appFontSize: $enumDecode(_$FontSizeEnumMap, json['appFontSize']),
  appFontType: $enumDecode(_$AppFontTypeEnumMap, json['appFontType']),
);

Map<String, dynamic> _$AppSettingsToJson(AppSettings instance) =>
    <String, dynamic>{
      'appFontSize': _$FontSizeEnumMap[instance.appFontSize]!,
      'appFontType': _$AppFontTypeEnumMap[instance.appFontType]!,
    };

const _$FontSizeEnumMap = {
  FontSize.small: 'small',
  FontSize.medium: 'medium',
  FontSize.large: 'large',
};

const _$AppFontTypeEnumMap = {
  AppFontType.roboto: 'roboto',
  AppFontType.openSans: 'openSans',
  AppFontType.lato: 'lato',
  AppFontType.montserrat: 'montserrat',
  AppFontType.merriweather: 'merriweather',
};
