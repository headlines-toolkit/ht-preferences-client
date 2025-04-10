//
// ignore_for_file: lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_settings.g.dart';

/// {@template notification_settings}
/// Represents the user's notification settings.
///
/// Stores lists of followed category, source, and country IDs for notifications.
/// Assumes notifications are primarily for breaking news within these follows.
/// {@endtemplate}
@JsonSerializable()
class NotificationSettings extends Equatable {
  /// {@macro notification_settings}
  const NotificationSettings({
    required this.enabled,
    this.categoryNotifications = const [],
    this.sourceNotifications = const [],
    this.followedEventCountryIds = const [],
  });

  /// Creates a [NotificationSettings] instance from a JSON map.
  factory NotificationSettings.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsFromJson(json);

  /// Whether notifications are enabled globally.
  final bool enabled;

  /// A list of category IDs the user follows for notifications.
  final List<String> categoryNotifications;

  /// A list of source IDs the user follows for notifications.
  final List<String> sourceNotifications;

  /// A list of country IDs the user follows for event notifications.
  final List<String> followedEventCountryIds;

  /// Converts this [NotificationSettings] instance to a JSON map.
  Map<String, dynamic> toJson() => _$NotificationSettingsToJson(this);

  @override
  List<Object?> get props => [
    enabled,
    categoryNotifications,
    sourceNotifications,
    followedEventCountryIds,
  ];
}
