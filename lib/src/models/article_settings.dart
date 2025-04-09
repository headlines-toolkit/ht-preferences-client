import 'package:equatable/equatable.dart';
import 'package:ht_preferences_client/src/enums/font_size.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_settings.g.dart';

/// {@template article_settings}
/// Represents the article's settings.
/// {@endtemplate}
@JsonSerializable()
class ArticleSettings extends Equatable {
  /// {@macro article_settings}
  const ArticleSettings({required this.articleFontSize});

  /// Creates an [ArticleSettings] instance from a JSON map.
  factory ArticleSettings.fromJson(Map<String, dynamic> json) =>
      _$ArticleSettingsFromJson(json);

  /// The font size for displaying article content.
  final FontSize articleFontSize;

  /// Converts this [ArticleSettings] instance to a JSON map.
  Map<String, dynamic> toJson() => _$ArticleSettingsToJson(this);

  @override
  List<Object?> get props => [articleFontSize];
}
