//
// ignore_for_file: depend_on_referenced_packages, lines_longer_than_80_chars

import 'package:ht_categories_client/ht_categories_client.dart' show Category;
import 'package:ht_countries_client/ht_countries_client.dart' show Country;
import 'package:ht_headlines_client/ht_headlines_client.dart' show Headline;
import 'package:ht_preferences_client/src/exceptions.dart';
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:ht_sources_client/ht_sources_client.dart' show Source;

/// {@template ht_preferences_client}
/// Abstract client for managing user preferences.
/// {@endtemplate}
abstract class HtPreferencesClient {
  /// Gets the app settings.
  ///
  /// Throws [AppSettingsNotFoundException] if the settings are not found.
  /// Throws [PreferenceNotFoundException] for general not-found errors.
  Future<AppSettings> getAppSettings();

  /// Sets the app settings.
  ///
  /// Throws [AppSettingsUpdateException] if the update fails.
  /// Throws [PreferenceUpdateException] for general update errors.
  Future<void> setAppSettings(AppSettings settings);

  /// Gets the article settings.
  ///
  /// Throws [ArticleSettingsNotFoundException] if the settings are not found.
  /// Throws [PreferenceNotFoundException] for general not-found errors.
  Future<ArticleSettings> getArticleSettings();

  /// Sets the article settings.
  ///
  /// Throws [ArticleSettingsUpdateException] if the update fails.
  /// Throws [PreferenceUpdateException] for general update errors.
  Future<void> setArticleSettings(ArticleSettings settings);

  /// Gets the theme settings.
  ///
  /// Throws [ThemeSettingsNotFoundException] if the settings are not found.
  /// Throws [PreferenceNotFoundException] for general not-found errors.
  Future<ThemeSettings> getThemeSettings();

  /// Sets the theme settings.
  ///
  /// Throws [ThemeSettingsUpdateException] if the update fails.
  /// Throws [PreferenceUpdateException] for general update errors.
  Future<void> setThemeSettings(ThemeSettings settings);

  /// Gets the bookmarked headlines.
  ///
  /// Throws [BookmarkedHeadlinesNotFoundException] if none are found.
  /// Throws [PreferenceNotFoundException] for general not-found errors.
  Future<List<Headline>> getBookmarkedHeadlines();

  /// Sets the bookmarked headlines.
  ///
  /// Throws [BookmarkedHeadlinesUpdateException] if the update fails.
  /// Throws [PreferenceUpdateException] for general update errors.
  Future<void> setBookmarkedHeadlines(List<Headline> headlines);

  /// Gets the followed sources.
  ///
  /// Throws [FollowedSourcesNotFoundException] if none are found.
  /// Throws [PreferenceNotFoundException] for general not-found errors.
  Future<List<Source>> getFollowedSources();

  /// Sets the followed sources.
  ///
  /// Throws [FollowedSourcesUpdateException] if the update fails.
  /// Throws [PreferenceUpdateException] for general update errors.
  Future<void> setFollowedSources(List<Source> sources);

  /// Gets the followed categories.
  ///
  /// Throws [FollowedCategoriesNotFoundException] if none are found.
  /// Throws [PreferenceNotFoundException] for general not-found errors.
  Future<List<Category>> getFollowedCategories();

  /// Sets the followed categories.
  ///
  /// Throws [FollowedCategoriesUpdateException] if the update fails.
  /// Throws [PreferenceUpdateException] for general update errors.
  Future<void> setFollowedCategories(List<Category> categories);

  /// Gets the followed event countries.
  ///
  /// Throws [FollowedEventCountriesNotFoundException] if none are found.
  /// Throws [PreferenceNotFoundException] for general not-found errors.
  Future<List<Country>> getFollowedEventCountries();

  /// Sets the followed event countries.
  ///
  /// Throws [FollowedEventCountriesUpdateException] if the update fails.
  /// Throws [PreferenceUpdateException] for general update errors.
  Future<void> setFollowedEventCountries(List<Country> countries);

  /// Gets the article reading history.
  ///
  /// Throws [ArticleReadingHistoryNotFoundException] if none is found.
  /// Throws [PreferenceNotFoundException] for general not-found errors.
  Future<List<Headline>> getArticleReadingHistory();

  /// Sets the article reading history.
  ///
  /// Throws [ArticleReadingHistoryUpdateException] if the update fails.
  /// Throws [PreferenceUpdateException] for general update errors.
  Future<void> setArticleReadingHistory(List<Headline> headlines);

  /// Gets the feed settings.
  ///
  /// Throws [FeedSettingsNotFoundException] if the settings are not found.
  /// Throws [PreferenceNotFoundException] for general not-found errors.
  Future<FeedSettings> getFeedSettings();

  /// Sets the feed settings.
  ///
  /// Throws [FeedSettingsUpdateException] if the update fails.
  /// Throws [PreferenceUpdateException] for general update errors.
  Future<void> setFeedSettings(FeedSettings settings);

  /// Gets the notification preferences.
  ///
  /// Throws [NotificationPreferencesNotFoundException] if the preferences are not found.
  /// Throws [PreferenceNotFoundException] for general not-found errors.
  Future<NotificationSettings> getNotificationPreferences();

  /// Sets the notification preferences.
  ///
  /// Throws [NotificationPreferencesUpdateException] if the update fails.
  /// Throws [PreferenceUpdateException] for general update errors.
  Future<void> setNotificationPreferences(NotificationSettings preferences);
}
