import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_preferences.g.dart';

/// {@template notification_preferences}
/// Represents the user's notification preferences.
/// {@endtemplate}
@JsonSerializable()
class NotificationPreferences extends Equatable {
  /// {@macro notification_preferences}
  const NotificationPreferences({
    required this.enabled,
    required this.categoryNotifications,
    required this.sourceNotifications,
  });

  /// Creates a [NotificationPreferences] instance from a JSON map.
  factory NotificationPreferences.fromJson(Map<String, dynamic> json) =>
      _$NotificationPreferencesFromJson(json);

  /// Whether notifications are enabled.
  final bool enabled;

  /// A map of category IDs to notification settings (enabled/disabled).
  final Map<String, bool> categoryNotifications;

  /// A map of source IDs to notification settings (enabled/disabled).
  final Map<String, bool> sourceNotifications;

  /// Converts this [NotificationPreferences] instance to a JSON map.
  Map<String, dynamic> toJson() => _$NotificationPreferencesToJson(this);

  @override
  List<Object?> get props => [
    enabled,
    categoryNotifications,
    sourceNotifications,
  ];
}
