import 'package:equatable/equatable.dart';
import 'package:ht_preferences_client/src/enums/enums.dart'; // Import barrel file
import 'package:meta/meta.dart';

/// {@template feed_settings}
/// Represents the feed's settings.
/// {@endtemplate}
@immutable
class FeedSettings extends Equatable {
  /// {@macro feed_settings}
  const FeedSettings({required this.feedListTileType});

  /// Creates a [FeedSettings] instance from a JSON map.
  ///
  /// Throws a [FormatException] if the JSON is invalid.
  factory FeedSettings.fromJson(Map<String, dynamic> json) {
    final feedListTileTypeString = json['feedListTileType'] as String?;

    if (feedListTileTypeString == null) {
      throw const FormatException(
        'Missing required field "feedListTileType" in FeedSettings JSON.',
      );
    }

    try {
      return FeedSettings(
        feedListTileType: FeedListTileType.values.byName(
          feedListTileTypeString,
        ),
      );
    } catch (e) {
      throw FormatException('Invalid enum value in FeedSettings JSON: $e');
    }
  }

  /// The type of tile used in the news feed list.
  final FeedListTileType feedListTileType;

  /// Converts this [FeedSettings] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {'feedListTileType': feedListTileType.name};
  }

  @override
  List<Object?> get props => [feedListTileType];
}
