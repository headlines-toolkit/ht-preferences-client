import 'package:equatable/equatable.dart';
import 'package:ht_preferences_client/src/enums/enums.dart'; // Corrected import
import 'package:meta/meta.dart';

/// {@template app_settings}
/// Represents the app's settings.
/// {@endtemplate}
@immutable
class AppSettings extends Equatable {
  /// {@macro app_settings}
  const AppSettings({required this.appFontSize, required this.appFontType});

  /// Creates an [AppSettings] instance from a JSON map.
  ///
  /// Throws a [FormatException] if the JSON is invalid.
  factory AppSettings.fromJson(Map<String, dynamic> json) {
    final appFontSizeString = json['appFontSize'] as String?;
    final appFontTypeString = json['appFontType'] as String?;

    if (appFontSizeString == null) {
      throw const FormatException(
        'Missing required field "appFontSize" in AppSettings JSON.',
      );
    }
    if (appFontTypeString == null) {
      throw const FormatException(
        'Missing required field "appFontType" in AppSettings JSON.',
      );
    }

    try {
      return AppSettings(
        appFontSize: AppFontSize.values.byName(
          appFontSizeString,
        ), // Renamed enum
        appFontType: AppFontType.values.byName(appFontTypeString),
      );
    } catch (e) {
      throw FormatException('Invalid enum value in AppSettings JSON: $e');
    }
  }

  /// The font size for the app's UI.
  final AppFontSize appFontSize; // Renamed enum

  /// {@template app_font_type}
  /// The font type (name) for the app's UI.
  /// {@endtemplate}
  final AppFontType appFontType;

  /// Converts this [AppSettings] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {'appFontSize': appFontSize.name, 'appFontType': appFontType.name};
  }

  @override
  List<Object?> get props => [appFontSize, appFontType];
}
