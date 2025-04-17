import 'package:equatable/equatable.dart';
import 'package:ht_preferences_client/src/enums/enums.dart'; // Import barrel file
import 'package:meta/meta.dart';

/// {@template theme_settings}
/// Represents the theme's settings.
/// {@endtemplate}
@immutable
class ThemeSettings extends Equatable {
  /// {@macro theme_settings}
  const ThemeSettings({required this.themeMode, required this.themeName});

  /// Creates a [ThemeSettings] instance from a JSON map.
  ///
  /// Throws a [FormatException] if the JSON is invalid.
  factory ThemeSettings.fromJson(Map<String, dynamic> json) {
    final themeModeString = json['themeMode'] as String?;
    final themeNameString = json['themeName'] as String?;

    if (themeModeString == null) {
      throw const FormatException(
        'Missing required field "themeMode" in ThemeSettings JSON.',
      );
    }
    if (themeNameString == null) {
      throw const FormatException(
        'Missing required field "themeName" in ThemeSettings JSON.',
      );
    }

    try {
      return ThemeSettings(
        themeMode: AppThemeMode.values.byName(themeModeString),
        themeName: AppThemeName.values.byName(themeNameString),
      );
    } catch (e) {
      throw FormatException('Invalid enum value in ThemeSettings JSON: $e');
    }
  }

  /// The app's theme mode (dark/light).
  final AppThemeMode themeMode;

  /// The name of the theme name (used to generate ThemeData).
  final AppThemeName themeName;

  /// Converts this [ThemeSettings] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {'themeMode': themeMode.name, 'themeName': themeName.name};
  }

  @override
  List<Object?> get props => [themeMode, themeName];
}
