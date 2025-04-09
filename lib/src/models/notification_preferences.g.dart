// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationPreferences _$NotificationPreferencesFromJson(
  Map<String, dynamic> json,
) => NotificationPreferences(
  enabled: json['enabled'] as bool,
  categoryNotifications: Map<String, bool>.from(
    json['categoryNotifications'] as Map,
  ),
  sourceNotifications: Map<String, bool>.from(
    json['sourceNotifications'] as Map,
  ),
);

Map<String, dynamic> _$NotificationPreferencesToJson(
  NotificationPreferences instance,
) => <String, dynamic>{
  'enabled': instance.enabled,
  'categoryNotifications': instance.categoryNotifications,
  'sourceNotifications': instance.sourceNotifications,
};
