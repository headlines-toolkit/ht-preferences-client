// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationSettings _$NotificationSettingsFromJson(
  Map<String, dynamic> json,
) => NotificationSettings(
  enabled: json['enabled'] as bool,
  categoryNotifications:
      (json['categoryNotifications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  sourceNotifications:
      (json['sourceNotifications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  followedEventCountryIds:
      (json['followedEventCountryIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$NotificationSettingsToJson(
  NotificationSettings instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'categoryNotifications': instance.categoryNotifications,
  'sourceNotifications': instance.sourceNotifications,
  'followedEventCountryIds': instance.followedEventCountryIds,
};
