import 'package:equatable/equatable.dart';
import 'package:ht_preferences_client/src/enums/app_theme_mode.dart';
import 'package:ht_preferences_client/src/enums/app_theme_name.dart';
import 'package:json_annotation/json_annotation.dart';

part 'theme_settings.g.dart';

/// {@template theme_settings}
/// Represents the theme's settings.
/// {@endtemplate}
@JsonSerializable()
class ThemeSettings extends Equatable {
  /// {@macro theme_settings}
  const ThemeSettings({required this.themeMode, required this.themeName});

  /// Creates a [ThemeSettings] instance from a JSON map.
  factory ThemeSettings.fromJson(Map<String, dynamic> json) =>
      _$ThemeSettingsFromJson(json);

  /// The app's theme mode (dark/light).
  final AppThemeMode themeMode;

  /// The name of the theme name (used to generate ThemeData).
  final AppThemeName themeName;

  /// Converts this [ThemeSettings] instance to a JSON map.
  Map<String, dynamic> toJson() => _$ThemeSettingsToJson(this);

  @override
  List<Object?> get props => [themeMode, themeName];
}
