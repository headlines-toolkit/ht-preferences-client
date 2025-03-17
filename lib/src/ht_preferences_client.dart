//
//ignore_for_file: lines_longer_than_80_chars

/// {@template ht_preferences_client}
/// A client for managing user preferences for the headlines toolkit app.
/// {@endtemplate}
abstract class HtPreferencesClient {
  /// Gets the user's preferred language.
  ///
  /// Returns the language code (e.g., "en", "fr").
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the language.
  Future<String> getLanguage();

  /// Sets the user's preferred language.
  ///
  /// [language] is the language code (e.g., "en", "fr").
  ///
  /// Throws an [InvalidLanguageException] if the provided language code is
  /// invalid.
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the language.
  Future<void> setLanguage(String language);

  /// Gets the user's preferred theme.
  ///
  /// Returns the [ThemeMode].
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the theme.
  Future<ThemeMode> getTheme();

  /// Sets the user's preferred theme.
  ///
  /// [theme] is the [ThemeMode] to set.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the theme.
  Future<void> setTheme(ThemeMode theme);

  /// Gets the user's followed news source IDs.
  ///
  /// Returns a list of source IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the followed source IDs.
  Future<List<String>> getFollowedSourceIds();

  /// Sets the user's followed news source IDs.
  ///
  /// [sources] is a list of source IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the followed source IDs.
  Future<void> setFollowedSourceIds(List<String> sources);

  /// Adds a news source to the user's follows.
  ///
  /// [source] is the ID of the source to add.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// adding the source.
  Future<void> addFollowedSource(String source);

  /// Removes a news source from the user's follows.
  ///
  /// [source] is the ID of the source to remove.
  ///
  /// Throws a [SourceNotFoundException] if the source is not in the user's
  /// follows.
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the source.
  Future<void> removeFollowedSource(String source);

  /// Gets the user's followed category IDs.
  ///
  /// Returns a list of category IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the followed category IDs.
  Future<List<String>> getFollowedCategoryIds();

  /// Sets the user's followed category IDs.
  ///
  /// [categories] is a list of category IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the followed category IDs.
  Future<void> setFollowedCategoryIds(List<String> categories);

  /// Adds a category to the user's follows.
  ///
  /// [category] is the ID of the category to add.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// adding the category.
  Future<void> addFollowedCategory(String category);

  /// Removes a category from the user's follows.
  ///
  /// [category] is the ID of the category to remove.
  ///
  /// Throws a [CategoryNotFoundException] if the category is not in the user's
  /// follows.
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the category.
  Future<void> removeFollowedCategory(String category);

  /// Gets the user's followed event country IDs.
  ///
  /// Returns a list of country IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the followed country IDs.
  Future<List<String>> getFollowedEventCountryIds();

  /// Sets the user's followed event country IDs.
  ///
  /// [countries] is a list of country IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the followed country IDs.
  Future<void> setFollowedEventCountryIds(List<String> countries);

  /// Adds an event country to the user's follows.
  ///
  /// [country] is the ID of the country to add.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// adding the country.
  Future<void> addFollowedEventCountry(String country);

  /// Removes an event country from the user's follows.
  ///
  /// [country] is the ID of the country to remove.
  ///
  /// Throws a [CountryNotFoundException] if the country is not in the user's
  /// follows.
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the country.
  Future<void> removeFollowedEventCountry(String country);

  /// Removes all followed news source IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the source IDs.
  Future<void> removeAllFollowedSourceIds();

  /// Removes all followed category IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the category IDs.
  Future<void> removeAllFollowedCategoryIds();

  /// Removes all followed event country IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the country IDs.
  Future<void> removeAllFollowedEventCountryIds();

  /// Gets the user's preferred text size for headline articles.
  ///
  /// Returns the [HeadlineArticleTextSize].
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the text size.
  Future<HeadlineArticleTextSize> getHeadlineArticleTextSize();

  /// Sets the user's preferred text size for headline articles.
  ///
  /// [textSize] is the [HeadlineArticleTextSize] to set.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the text size.
  Future<void> setHeadlineArticleTextSize(
    HeadlineArticleTextSize textSize,
  );

  /// Gets the user's preferred font size for the app.
  ///
  /// Returns the [AppFontSize].
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the font size.
  Future<AppFontSize> getAppFontSize();

  /// Sets the user's preferred font size for the app.
  ///
  /// [fontSize] is the [AppFontSize] to set.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the font size.
  Future<void> setAppFontSize(AppFontSize fontSize);

  /// Gets the user's saved headlines.
  ///
  /// Returns a list of serialized headline strings.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the saved headlines.
  Future<List<String>> getSavedHeadlines();

  /// Sets the user's saved headlines.
  ///
  /// [headlines] is a list of serialized headline strings.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the saved headlines.
  Future<void> setSavedHeadlines(List<String> headlines);

  /// Adds a headline to the user's saved headlines.
  ///
  /// [headline] is the serialized headline string to add.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// adding the headline.
  Future<void> addSavedHeadline(String headline);

  /// Removes a headline from the user's saved headlines.
  ///
  /// [headline] is the serialized headline string to remove.
  ///
  /// Throws a [HeadlineNotFoundException] if the headline is not in the user's
  /// saved headlines.
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the headline.
  Future<void> removeSavedHeadline(String headline);

  /// Removes all headlines from the user's saved headlines.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the headlines.
  Future<void> removeAllSavedHeadlines();

  /// Gets the user's preferred content density.
  ///
  /// Returns the [ContentDensity].
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the content density.
  Future<ContentDensity> getContentDensity();

  /// Sets the user's preferred content density.
  ///
  /// [contentDensity] is the [ContentDensity] to set.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the content density.
  Future<void> setContentDensity(ContentDensity contentDensity);
}

/// Defines the possible content densities.
enum ContentDensity {
  /// Compact content density.
  compact,

  /// Comfortable content density.
  comfortable,
}

/// Thrown when trying to remove a headline that's not in the user's saved headlines.
class HeadlineNotFoundException implements Exception {
  /// Creates a [HeadlineNotFoundException].
  HeadlineNotFoundException(this.headline);

  /// The headline that was not found.
  final String headline;

  @override
  String toString() {
    return 'HeadlineNotFoundException: Headline not found in saved headlines: $headline';
  }
}

/// Defines the possible text sizes for headline articles.
enum HeadlineArticleTextSize {
  /// Small text size.
  small,

  /// Medium text size.
  medium,

  /// Large text size.
  large,
}

/// Defines the possible font sizes for the app.
enum AppFontSize {
  /// Small font size.
  small,

  /// Medium font size.
  medium,

  /// Large font size.
  large,
}

/// Defines the possible theme modes.
enum ThemeMode {
  /// Light theme.
  light,

  /// Dark theme.
  dark,

  /// System default theme.
  system,
}

/// A general exception for errors related to storing or retrieving preferences.
class PreferencesStorageException implements Exception {
  /// Creates a [PreferencesStorageException].
  PreferencesStorageException([this.message]);

  /// The error message.
  final String? message;

  @override
  String toString() {
    return 'PreferencesStorageException: $message';
  }
}

/// Thrown when an invalid language code is provided.
class InvalidLanguageException implements Exception {
  /// Creates an [InvalidLanguageException].
  InvalidLanguageException(this.language);

  /// The invalid language code.
  final String language;

  @override
  String toString() {
    return 'InvalidLanguageException: Invalid language code: $language';
  }
}

/// Thrown when an invalid theme mode is provided.
class InvalidThemeModeException implements Exception {
  /// Creates an [InvalidThemeModeException].
  InvalidThemeModeException(this.themeMode);

  /// The invalid theme mode.
  final String themeMode;

  @override
  String toString() {
    return 'InvalidThemeModeException: Invalid theme mode: $themeMode';
  }
}

/// Thrown when trying to remove a source that's not in the user's follows.
class SourceNotFoundException implements Exception {
  /// Creates a [SourceNotFoundException].
  SourceNotFoundException(this.source);

  /// The source that was not found.
  final String source;

  @override
  String toString() {
    return 'SourceNotFoundException: Source not found in favorites: $source';
  }
}

/// Thrown when trying to remove a category that's not in the user's follows.
class CategoryNotFoundException implements Exception {
  /// Creates a [CategoryNotFoundException].
  CategoryNotFoundException(this.category);

  /// The category that was not found.
  final String category;

  @override
  String toString() {
    return 'CategoryNotFoundException: Category not found in favorites: $category';
  }
}

/// Thrown when trying to remove a country that's not in the user's follows.
class CountryNotFoundException implements Exception {
  /// Creates a [CountryNotFoundException].
  CountryNotFoundException(this.country);

  /// The country that was not found.
  final String country;

  @override
  String toString() {
    return 'CountryNotFoundException: Country not found in favorites: $country';
  }
}
