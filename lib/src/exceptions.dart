/// {@template preference_not_found_exception}
/// Exception thrown when a preference is not found.
/// {@endtemplate}
class PreferenceNotFoundException implements Exception {
  /// {@macro preference_not_found_exception}
  PreferenceNotFoundException(this.message);

  /// The error message.
  final String message;

  @override
  String toString() => 'PreferenceNotFoundException: $message';
}

/// {@template preference_update_exception}
/// Exception thrown when a preference update fails.
/// {@endtemplate}
class PreferenceUpdateException implements Exception {
  /// {@macro preference_update_exception}
  PreferenceUpdateException(this.message);

  /// The error message.
  final String message;

  @override
  String toString() => 'PreferenceUpdateException: $message';
}

/// {@template app_settings_not_found_exception}
/// Exception thrown when app settings are not found.
/// {@endtemplate}
class AppSettingsNotFoundException extends PreferenceNotFoundException {
  /// {@macro app_settings_not_found_exception}
  AppSettingsNotFoundException(super.message);
}

/// {@template app_settings_update_exception}
/// Exception thrown when app settings update fails.
/// {@endtemplate}
class AppSettingsUpdateException extends PreferenceUpdateException {
  /// {@macro app_settings_update_exception}
  AppSettingsUpdateException(super.message);
}

/// {@template article_settings_not_found_exception}
/// Exception thrown when article settings are not found.
/// {@endtemplate}
class ArticleSettingsNotFoundException extends PreferenceNotFoundException {
  /// {@macro article_settings_not_found_exception}
  ArticleSettingsNotFoundException(super.message);
}

/// {@template article_settings_update_exception}
/// Exception thrown when article settings update fails.
/// {@endtemplate}
class ArticleSettingsUpdateException extends PreferenceUpdateException {
  /// {@macro article_settings_update_exception}
  ArticleSettingsUpdateException(super.message);
}

/// {@template theme_settings_not_found_exception}
/// Exception thrown when theme settings are not found.
/// {@endtemplate}
class ThemeSettingsNotFoundException extends PreferenceNotFoundException {
  /// {@macro theme_settings_not_found_exception}
  ThemeSettingsNotFoundException(super.message);
}

/// {@template theme_settings_update_exception}
/// Exception thrown when theme settings update fails.
/// {@endtemplate}
class ThemeSettingsUpdateException extends PreferenceUpdateException {
  /// {@macro theme_settings_update_exception}
  ThemeSettingsUpdateException(super.message);
}

/// {@template bookmarked_headlines_not_found_exception}
/// Exception thrown when bookmarked headlines are not found.
/// {@endtemplate}
class BookmarkedHeadlinesNotFoundException extends PreferenceNotFoundException {
  /// {@macro bookmarked_headlines_not_found_exception}
  BookmarkedHeadlinesNotFoundException(super.message);
}

/// {@template bookmarked_headlines_update_exception}
/// Exception thrown when bookmarked headlines update fails.
/// {@endtemplate}
class BookmarkedHeadlinesUpdateException extends PreferenceUpdateException {
  /// {@macro bookmarked_headlines_update_exception}
  BookmarkedHeadlinesUpdateException(super.message);
}

/// {@template followed_sources_not_found_exception}
/// Exception thrown when followed sources are not found.
/// {@endtemplate}
class FollowedSourcesNotFoundException extends PreferenceNotFoundException {
  /// {@macro followed_sources_not_found_exception}
  FollowedSourcesNotFoundException(super.message);
}

/// {@template followed_sources_update_exception}
/// Exception thrown when followed sources update fails.
/// {@endtemplate}
class FollowedSourcesUpdateException extends PreferenceUpdateException {
  /// {@macro followed_sources_update_exception}
  FollowedSourcesUpdateException(super.message);
}

/// {@template followed_categories_not_found_exception}
/// Exception thrown when followed categories are not found.
/// {@endtemplate}
class FollowedCategoriesNotFoundException extends PreferenceNotFoundException {
  /// {@macro followed_categories_not_found_exception}
  FollowedCategoriesNotFoundException(super.message);
}

/// {@template followed_categories_update_exception}
/// Exception thrown when followed categories update fails.
/// {@endtemplate}
class FollowedCategoriesUpdateException extends PreferenceUpdateException {
  /// {@macro followed_categories_update_exception}
  FollowedCategoriesUpdateException(super.message);
}

/// {@template followed_event_countries_not_found_exception}
/// Exception thrown when followed event countries are not found.
/// {@endtemplate}
class FollowedEventCountriesNotFoundException
    extends PreferenceNotFoundException {
  /// {@macro followed_event_countries_not_found_exception}
  FollowedEventCountriesNotFoundException(super.message);
}

/// {@template followed_event_countries_update_exception}
/// Exception thrown when followed event countries update fails.
/// {@endtemplate}
class FollowedEventCountriesUpdateException extends PreferenceUpdateException {
  /// {@macro followed_event_countries_update_exception}
  FollowedEventCountriesUpdateException(super.message);
}

/// {@template headline_reading_history_not_found_exception}
/// Exception thrown when headline reading history is not found.
/// {@endtemplate}
class HeadlineReadingHistoryNotFoundException
    extends PreferenceNotFoundException {
  /// {@macro headline_reading_history_not_found_exception}
  HeadlineReadingHistoryNotFoundException(super.message);
}

/// {@template headline_reading_history_update_exception}
/// Exception thrown when headline reading history update fails.
/// {@endtemplate}
class HeadlineReadingHistoryUpdateException extends PreferenceUpdateException {
  /// {@macro headline_reading_history_update_exception}
  HeadlineReadingHistoryUpdateException(super.message);
}

/// {@template feed_settings_not_found_exception}
/// Exception thrown when feed settings are not found.
/// {@endtemplate}
class FeedSettingsNotFoundException extends PreferenceNotFoundException {
  /// {@macro feed_settings_not_found_exception}
  FeedSettingsNotFoundException(super.message);
}

/// {@template feed_settings_update_exception}
/// Exception thrown when feed settings update fails.
/// {@endtemplate}
class FeedSettingsUpdateException extends PreferenceUpdateException {
  /// {@macro feed_settings_update_exception}
  FeedSettingsUpdateException(super.message);
}

/// {@template notification_settings_not_found_exception}
/// Exception thrown when notification settings are not found.
/// {@endtemplate}
class NotificationSettingsNotFoundException
    extends PreferenceNotFoundException {
  /// {@macro notification_settings_not_found_exception}
  NotificationSettingsNotFoundException(super.message);
}

/// {@template notification_settings_update_exception}
/// Exception thrown when notification settings update fails.
/// {@endtemplate}
class NotificationSettingsUpdateException extends PreferenceUpdateException {
  /// {@macro notification_settings_update_exception}
  NotificationSettingsUpdateException(super.message);
}
