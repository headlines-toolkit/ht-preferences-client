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
  /// Throws [AppSettingsNotFoundException] if not found.
  /// Throws [AppSettingsUpdateException] if update fails.
  Future<AppSettings> getAppSettings();

  /// Sets the app settings.
  ///
  /// Throws [AppSettingsNotFoundException] if not found.
  /// Throws [AppSettingsUpdateException] if update fails.
  Future<void> setAppSettings(AppSettings settings);

  /// Gets the article settings.
  ///
  /// Throws [ArticleSettingsNotFoundException] if not found.
  /// Throws [ArticleSettingsUpdateException] if update fails.
  Future<ArticleSettings> getArticleSettings();

  /// Sets the article settings.
  ///
  /// Throws [ArticleSettingsNotFoundException] if not found.
  /// Throws [ArticleSettingsUpdateException] if update fails.
  Future<void> setArticleSettings(ArticleSettings settings);

  /// Gets the theme settings.
  ///
  /// Throws [ThemeSettingsNotFoundException] if not found.
  /// Throws [ThemeSettingsUpdateException] if update fails.
  Future<ThemeSettings> getThemeSettings();

  /// Sets the theme settings.
  ///
  /// Throws [ThemeSettingsNotFoundException] if not found.
  /// Throws [ThemeSettingsUpdateException] if update fails.
  Future<void> setThemeSettings(ThemeSettings settings);

  /// Gets the complete list of bookmarked headlines.
  ///
  /// Throws [BookmarkedHeadlinesNotFoundException] if the user's bookmarks
  /// cannot be found (e.g., initial state or data corruption).
  Future<List<Headline>> getBookmarkedHeadlines();

  /// Adds a headline to the user's bookmarks.
  ///
  /// [headline] The headline object to bookmark.
  ///
  /// Throws [BookmarkedHeadlinesUpdateException] if fetching the list fails.
  Future<void> addBookmarkedHeadline(Headline headline);

  /// Removes a headline from the user's bookmarks using its ID.
  ///
  /// [headlineId] The unique identifier of the headline to remove.
  /// Throws [BookmarkedHeadlinesUpdateException] if adding the bookmark fails.
  Future<void> removeBookmarkedHeadline(String headlineId);

  /// Gets the followed sources.
  ///
  /// Throws [FollowedSourcesNotFoundException] if not found.
  /// Throws [FollowedSourcesUpdateException] if update fails.
  Future<List<Source>> getFollowedSources();

  /// Sets the followed sources.
  ///
  /// Throws [FollowedSourcesNotFoundException] if not found.
  /// Throws [FollowedSourcesUpdateException] if update fails.
  Future<void> setFollowedSources(List<Source> sources);

  /// Gets the followed categories.
  ///
  /// Throws [FollowedCategoriesNotFoundException] if not found.
  /// Throws [FollowedCategoriesUpdateException] if update fails.
  Future<List<Category>> getFollowedCategories();

  /// Sets the followed categories.
  ///
  /// Throws [FollowedCategoriesNotFoundException] if not found.
  /// Throws [FollowedCategoriesUpdateException] if update fails.
  Future<void> setFollowedCategories(List<Category> categories);

  /// Gets the followed event countries.
  ///
  /// Throws [FollowedEventCountriesNotFoundException] if not found.
  /// Throws [FollowedEventCountriesUpdateException] if update fails.
  Future<List<Country>> getFollowedEventCountries();

  /// Sets the followed event countries.
  ///
  /// Throws [FollowedEventCountriesNotFoundException] if not found.
  /// Throws [FollowedEventCountriesUpdateException] if update fails.
  Future<void> setFollowedEventCountries(List<Country> countries);

  /// Gets the complete headline reading history.
  ///
  /// Throws [HeadlineReadingHistoryNotFoundException] if the user's reading
  /// history cannot be found.
  Future<List<Headline>> getHeadlineReadingHistory();

  /// Adds a headline to the user's reading history.
  ///
  /// [headline] The headline object to add to the history.
  ///
  /// Throws [HeadlineReadingHistoryUpdateException] if fetching the history fails.
  Future<void> addHeadlineToHistory(Headline headline);

  /// Removes a headline from the user's reading history using its ID.
  ///
  /// [headlineId] The unique identifier of the headline to remove from history.
  ///
  /// Throws [HeadlineReadingHistoryUpdateException] if adding to history fails.
  Future<void> removeHeadlineToHistory(String headlineId);

  /// Gets the feed settings.
  ///
  /// Throws [FeedSettingsNotFoundException] if not found.
  /// Throws [FeedSettingsUpdateException] if update fails.
  Future<FeedSettings> getFeedSettings();

  /// Sets the feed settings.
  ///
  /// Throws [FeedSettingsNotFoundException] if not found.
  /// Throws [FeedSettingsUpdateException] if update fails.
  Future<void> setFeedSettings(FeedSettings settings);

  /// Gets the notification preferences.
  ///
  /// Throws [NotificationSettingsNotFoundException] if not found.
  /// Throws [NotificationSettingsUpdateException] if update fails.
  Future<NotificationSettings> getNotificationSettings();

  /// Sets the notification preferences.
  ///
  /// Throws [NotificationSettingsNotFoundException] if not found.
  /// Throws [NotificationSettingsUpdateException] if update fails.
  Future<void> setNotificationPreferences(NotificationSettings preferences);
}
