// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedSettings _$FeedSettingsFromJson(Map<String, dynamic> json) => FeedSettings(
  feedListTileType: $enumDecode(
    _$FeedListTileTypeEnumMap,
    json['feedListTileType'],
  ),
);

Map<String, dynamic> _$FeedSettingsToJson(FeedSettings instance) =>
    <String, dynamic>{
      'feedListTileType': _$FeedListTileTypeEnumMap[instance.feedListTileType]!,
    };

const _$FeedListTileTypeEnumMap = {
  FeedListTileType.imageTop: 'imageTop',
  FeedListTileType.imageStart: 'imageStart',
  FeedListTileType.textOnly: 'textOnly',
};
