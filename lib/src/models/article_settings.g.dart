// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleSettings _$ArticleSettingsFromJson(Map<String, dynamic> json) =>
    ArticleSettings(
      articleFontSize: $enumDecode(_$FontSizeEnumMap, json['articleFontSize']),
    );

Map<String, dynamic> _$ArticleSettingsToJson(ArticleSettings instance) =>
    <String, dynamic>{
      'articleFontSize': _$FontSizeEnumMap[instance.articleFontSize]!,
    };

const _$FontSizeEnumMap = {
  FontSize.small: 'small',
  FontSize.medium: 'medium',
  FontSize.large: 'large',
};
