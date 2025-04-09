import 'package:equatable/equatable.dart';
import 'package:ht_preferences_client/src/enums/app_font_size.dart';
import 'package:ht_preferences_client/src/enums/enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_settings.g.dart';

/// {@template app_settings}
/// Represents the app's settings.
/// {@endtemplate}
@JsonSerializable()
class AppSettings extends Equatable {
  /// {@macro app_settings}
  const AppSettings({required this.appFontSize, required this.appFontType});

  /// Creates an [AppSettings] instance from a JSON map.
  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);

  /// The font size for the app's UI.
  final AppFontSize appFontSize;

  /// {@template app_font_type}
  /// The font type (name) for the app's UI.
  /// {@endtemplate}
  final AppFontType appFontType;

  /// Converts this [AppSettings] instance to a JSON map.
  Map<String, dynamic> toJson() => _$AppSettingsToJson(this);

  @override
  List<Object?> get props => [appFontSize, appFontType];
}
