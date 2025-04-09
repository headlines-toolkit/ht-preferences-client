//
// ignore_for_file: depend_on_referenced_packages

import 'package:ht_categories_client/ht_categories_client.dart' show Category;
import 'package:ht_countries_client/ht_countries_client.dart' show Country;
import 'package:ht_headlines_client/ht_headlines_client.dart' show Headline;
import 'package:ht_preferences_client/src/models/models.dart';
import 'package:ht_sources_client/ht_sources_client.dart' show Source;

/// {@template ht_preferences_client}
/// Abstract client for managing user preferences.
/// {@endtemplate}
abstract class HtPreferencesClient {
  /// Gets the app settings.
  Future<AppSettings> getAppSettings();

  /// Sets the app settings.
  Future<void> setAppSettings(AppSettings settings);

  /// Gets the article settings.
  Future<ArticleSettings> getArticleSettings();

  /// Sets the article settings.
  Future<void> setArticleSettings(ArticleSettings settings);

  /// Gets the theme settings.
  Future<ThemeSettings> getThemeSettings();

  /// Sets the theme settings.
  Future<void> setThemeSettings(ThemeSettings settings);

  /// Gets the bookmarked headlines.
  Future<List<Headline>> getBookmarkedHeadlines();

  /// Sets the bookmarked headlines.
  Future<void> setBookmarkedHeadlines(List<Headline> headlines);

  /// Gets the followed sources.
  Future<List<Source>> getFollowedSources();

  /// Sets the followed sources.
  Future<void> setFollowedSources(List<Source> sources);

  /// Gets the followed categories.
  Future<List<Category>> getFollowedCategories();

  /// Sets the followed categories.
  Future<void> setFollowedCategories(List<Category> categories);

  /// Gets the followed event countries.
  Future<List<Country>> getFollowedEventCountries();

  /// Sets the followed event countries.
  Future<void> setFollowedEventCountries(List<Country> countries);

  /// Gets the article reading history.
  Future<List<Headline>> getArticleReadingHistory();

  /// Sets the article reading history.
  Future<void> setArticleReadingHistory(List<Headline> headlines);

  /// Gets the feed settings.
  Future<FeedSettings> getFeedSettings();

  /// Sets the feed settings.
  Future<void> setFeedSettings(FeedSettings settings);

  /// Gets the notification preferences.
  Future<NotificationPreferences> getNotificationPreferences();

  /// Sets the notification preferences.
  Future<void> setNotificationPreferences(NotificationPreferences preferences);
}
