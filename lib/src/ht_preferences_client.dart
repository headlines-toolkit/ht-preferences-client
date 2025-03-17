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

  /// Gets the user's favorite news sources.
  ///
  /// Returns a list of source IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the favorite sources.
  Future<List<String>> getFavoriteSources();

  /// Sets the user's favorite news sources.
  ///
  /// [sources] is a list of source IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the favorite sources.
  Future<void> setFavoriteSources(List<String> sources);

  /// Adds a news source to the user's favorites.
  ///
  /// [source] is the ID of the source to add.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// adding the source.
  Future<void> addFavoriteSource(String source);

  /// Removes a news source from the user's favorites.
  ///
  /// [source] is the ID of the source to remove.
  ///
  /// Throws a [SourceNotFoundException] if the source is not in the user's
  /// favorites.
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the source.
  Future<void> removeFavoriteSource(String source);

  /// Gets the user's favorite categories.
  ///
  /// Returns a list of category IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the favorite categories.
  Future<List<String>> getFavoriteCategories();

  /// Sets the user's favorite categories.
  ///
  /// [categories] is a list of category IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the favorite categories.
  Future<void> setFavoriteCategories(List<String> categories);

  /// Adds a category to the user's favorites.
  ///
  /// [category] is the ID of the category to add.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// adding the category.
  Future<void> addFavoriteCategory(String category);

  /// Removes a category from the user's favorites.
  ///
  /// [category] is the ID of the category to remove.
  ///
  /// Throws a [CategoryNotFoundException] if the category is not in the user's
  /// favorites.
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the category.
  Future<void> removeFavoriteCategory(String category);

  /// Gets the user's favorite event countries.
  ///
  /// Returns a list of country IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// retrieving the favorite countries.
  Future<List<String>> getFavoriteEventCountries();

  /// Sets the user's favorite event countries.
  ///
  /// [countries] is a list of country IDs.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// storing the favorite countries.
  Future<void> setFavoriteEventCountries(List<String> countries);

  /// Adds an event country to the user's favorites.
  ///
  /// [country] is the ID of the country to add.
  ///
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// adding the country.
  Future<void> addFavoriteEventCountry(String country);

  /// Removes an event country from the user's favorites.
  ///
  /// [country] is the ID of the country to remove.
  ///
  /// Throws a [CountryNotFoundException] if the country is not in the user's
  /// favorites.
  /// Throws a [PreferencesStorageException] if an error occurs while
  /// removing the country.
  Future<void> removeFavoriteEventCountry(String country);
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

/// Thrown when trying to remove a source that's not in the user's favorites.
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

/// Thrown when trying to remove a category that's not in the user's favorites.
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

/// Thrown when trying to remove a country that's not in the user's favorites.
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
