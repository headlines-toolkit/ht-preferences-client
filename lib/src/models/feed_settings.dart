import 'package:equatable/equatable.dart';
import 'package:ht_preferences_client/src/enums/feed_list_tile_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'feed_settings.g.dart';

/// {@template feed_settings}
/// Represents the feed's settings.
/// {@endtemplate}
@JsonSerializable()
class FeedSettings extends Equatable {
  /// {@macro feed_settings}
  const FeedSettings({required this.feedListTileType});

  /// Creates a [FeedSettings] instance from a JSON map.
  factory FeedSettings.fromJson(Map<String, dynamic> json) =>
      _$FeedSettingsFromJson(json);

  /// The type of tile used in the news feed list.
  final FeedListTileType feedListTileType;

  /// Converts this [FeedSettings] instance to a JSON map.
  Map<String, dynamic> toJson() => _$FeedSettingsToJson(this);

  @override
  List<Object?> get props => [feedListTileType];
}
