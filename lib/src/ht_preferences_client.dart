//
// ignore_for_file: depend_on_referenced_packages, lines_longer_than_80_chars

import 'package:ht_categories_client/ht_categories_client.dart' show Category;
import 'package:ht_countries_client/ht_countries_client.dart' show Country;
import 'package:ht_headlines_client/ht_headlines_client.dart' show Headline;
// Removed: import 'package:ht_preferences_client/src/exceptions.dart';
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:ht_sources_client/ht_sources_client.dart' show Source;

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

/// {@template ht_preferences_client}
/// Abstract client for managing user preferences.
/// {@endtemplate}
abstract class HtPreferencesClient {
  /// Gets the app settings.
  ///
  /// Throws [PreferenceNotFoundException] if not found.
  /// Throws [PreferenceUpdateException] if update fails.
  Future<AppSettings> getAppSettings();

  /// Sets the app settings.
  ///
  /// Throws [PreferenceUpdateException] if update fails.
  Future<void> setAppSettings(AppSettings settings);

  /// Gets the article settings.
  ///
  /// Throws [PreferenceNotFoundException] if not found.
  /// Throws [PreferenceUpdateException] if update fails.
  Future<ArticleSettings> getArticleSettings();

  /// Sets the article settings.
  ///
  /// Throws [PreferenceUpdateException] if update fails.
  Future<void> setArticleSettings(ArticleSettings settings);

  /// Gets the theme settings.
  ///
  /// Throws [PreferenceNotFoundException] if not found.
  /// Throws [PreferenceUpdateException] if update fails.
  Future<ThemeSettings> getThemeSettings();

  /// Sets the theme settings.
  ///
  /// Throws [PreferenceUpdateException] if update fails.
  Future<void> setThemeSettings(ThemeSettings settings);

  /// Gets the complete list of bookmarked headlines.
  ///
  /// Throws [PreferenceNotFoundException] if the user's bookmarks
  /// cannot be found (e.g., initial state or data corruption).
  /// Throws [PreferenceUpdateException] if fetching fails.
  Future<List<Headline>> getBookmarkedHeadlines();

  /// Adds a headline to the user's bookmarks.
  ///
  /// [headline] The headline object to bookmark.
  ///
  /// Throws [PreferenceUpdateException] if adding the bookmark fails.
  Future<void> addBookmarkedHeadline(Headline headline);

  /// Removes a headline from the user's bookmarks using its ID.
  ///
  /// [headlineId] The unique identifier of the headline to remove.
  /// Throws [PreferenceUpdateException] if removing the bookmark fails.
  Future<void> removeBookmarkedHeadline(String headlineId);

  /// Gets the followed sources.
  ///
  /// Throws [PreferenceNotFoundException] if not found.
  /// Throws [PreferenceUpdateException] if update fails.
  Future<List<Source>> getFollowedSources();

  /// Sets the followed sources.
  ///
  /// Throws [PreferenceUpdateException] if update fails.
  Future<void> setFollowedSources(List<Source> sources);

  /// Gets the followed categories.
  ///
  /// Throws [PreferenceNotFoundException] if not found.
  /// Throws [PreferenceUpdateException] if update fails.
  Future<List<Category>> getFollowedCategories();

  /// Sets the followed categories.
  ///
  /// Throws [PreferenceUpdateException] if update fails.
  Future<void> setFollowedCategories(List<Category> categories);

  /// Gets the followed event countries.
  ///
  /// Throws [PreferenceNotFoundException] if not found.
  /// Throws [PreferenceUpdateException] if update fails.
  Future<List<Country>> getFollowedEventCountries();

  /// Sets the followed event countries.
  ///
  /// Throws [PreferenceUpdateException] if update fails.
  Future<void> setFollowedEventCountries(List<Country> countries);

  /// Gets the complete headline reading history.
  ///
  /// Throws [PreferenceNotFoundException] if the user's reading
  /// history cannot be found.
  /// Throws [PreferenceUpdateException] if fetching fails.
  Future<List<Headline>> getHeadlineReadingHistory();

  /// Adds a headline to the user's reading history.
  ///
  /// [headline] The headline object to add to the history.
  ///
  /// Throws [PreferenceUpdateException] if adding to history fails.
  Future<void> addHeadlineToHistory(Headline headline);

  /// Removes a headline from the user's reading history using its ID.
  ///
  /// [headlineId] The unique identifier of the headline to remove from history.
  ///
  /// Throws [PreferenceUpdateException] if removing from history fails.
  Future<void> removeHeadlineToHistory(String headlineId);

  /// Gets the feed settings.
  ///
  /// Throws [PreferenceNotFoundException] if not found.
  /// Throws [PreferenceUpdateException] if update fails.
  Future<FeedSettings> getFeedSettings();

  /// Sets the feed settings.
  ///
  /// Throws [PreferenceUpdateException] if update fails.
  Future<void> setFeedSettings(FeedSettings settings);

  /// Gets the notification settings.
  ///
  /// Throws [PreferenceNotFoundException] if not found.
  /// Throws [PreferenceUpdateException] if update fails.
  Future<NotificationSettings> getNotificationSettings();

  /// Sets the notification settings.
  ///
  /// Throws [PreferenceUpdateException] if update fails.
  Future<void> setNotificationSettings(NotificationSettings preferences);
}
