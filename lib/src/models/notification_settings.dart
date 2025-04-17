//
// ignore_for_file: lines_longer_than_80_chars

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// {@template notification_settings}
/// Represents the user's notification settings.
///
/// Stores lists of followed category, source, and country IDs for notifications.
/// Assumes notifications are primarily for breaking news within these follows.
/// {@endtemplate}
@immutable
class NotificationSettings extends Equatable {
  /// {@macro notification_settings}
  const NotificationSettings({
    required this.enabled,
    this.categoryNotifications = const [],
    this.sourceNotifications = const [],
    this.followedEventCountryIds = const [],
  });

  /// Creates a [NotificationSettings] instance from a JSON map.
  ///
  /// Throws a [FormatException] if the JSON is invalid.
  factory NotificationSettings.fromJson(Map<String, dynamic> json) {
    final enabled = json['enabled'] as bool?;
    final categoryNotificationsRaw = json['categoryNotifications'] as List?;
    final sourceNotificationsRaw = json['sourceNotifications'] as List?;
    final followedEventCountryIdsRaw = json['followedEventCountryIds'] as List?;

    if (enabled == null) {
      throw const FormatException(
        'Missing required field "enabled" in NotificationSettings JSON.',
      );
    }

    // Safely cast lists, defaulting to empty if null or invalid type
    final categoryNotifications =
        categoryNotificationsRaw?.whereType<String>().toList(growable: false) ??
        const <String>[];
    final sourceNotifications =
        sourceNotificationsRaw?.whereType<String>().toList(growable: false) ??
        const <String>[];
    final followedEventCountryIds =
        followedEventCountryIdsRaw?.whereType<String>().toList(
          growable: false,
        ) ??
        const <String>[];

    return NotificationSettings(
      enabled: enabled,
      categoryNotifications: categoryNotifications,
      sourceNotifications: sourceNotifications,
      followedEventCountryIds: followedEventCountryIds,
    );
  }

  /// Whether notifications are enabled globally.
  final bool enabled;

  /// A list of category IDs the user follows for notifications.
  final List<String> categoryNotifications;

  /// A list of source IDs the user follows for notifications.
  final List<String> sourceNotifications;

  /// A list of country IDs the user follows for event notifications.
  final List<String> followedEventCountryIds;

  /// Converts this [NotificationSettings] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'enabled': enabled,
      'categoryNotifications': categoryNotifications,
      'sourceNotifications': sourceNotifications,
      'followedEventCountryIds': followedEventCountryIds,
    };
  }

  @override
  List<Object?> get props => [
    enabled,
    categoryNotifications,
    sourceNotifications,
    followedEventCountryIds,
  ];
}
