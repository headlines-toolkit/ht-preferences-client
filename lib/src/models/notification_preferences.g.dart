// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationPreferences _$NotificationPreferencesFromJson(
  Map<String, dynamic> json,
) => NotificationPreferences(
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

Map<String, dynamic> _$NotificationPreferencesToJson(
  NotificationPreferences instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'categoryNotifications': instance.categoryNotifications,
  'sourceNotifications': instance.sourceNotifications,
  'followedEventCountryIds': instance.followedEventCountryIds,
};
