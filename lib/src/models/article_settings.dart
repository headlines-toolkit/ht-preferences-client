import 'package:equatable/equatable.dart';
import 'package:ht_preferences_client/src/enums/enums.dart'; // Import barrel file
import 'package:meta/meta.dart';

/// {@template article_settings}
/// Represents the article's settings.
/// {@endtemplate}
@immutable
class ArticleSettings extends Equatable {
  /// {@macro article_settings}
  const ArticleSettings({required this.fontSize}); // Renamed property

  /// Creates an [ArticleSettings] instance from a JSON map.
  ///
  /// Throws a [FormatException] if the JSON is invalid.
  factory ArticleSettings.fromJson(Map<String, dynamic> json) {
    final fontSizeString = json['fontSize'] as String?; // Renamed key

    if (fontSizeString == null) {
      throw const FormatException(
        'Missing required field "fontSize" in ArticleSettings JSON.',
      );
    }

    try {
      return ArticleSettings(
        fontSize: AppFontSize.values.byName(fontSizeString), // Use AppFontSize
      );
    } catch (e) {
      throw FormatException('Invalid enum value in ArticleSettings JSON: $e');
    }
  }

  /// The font size for displaying article content.
  final AppFontSize fontSize; // Renamed property and type

  /// Converts this [ArticleSettings] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'fontSize': fontSize.name, // Renamed key and property
    };
  }

  @override
  List<Object?> get props => [fontSize]; // Renamed property
}
