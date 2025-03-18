# ht_preferences_client

Abstract client for managing user preferences for the headlines toolkit app.

## Description

This package provides the `HtPreferencesClient` class, which allows you to manage user preferences for the headlines toolkit app. It handles preferences such as language, theme, favorite sources, favorite categories, and favorite event countries.

## Getting started

To use this package, add `ht_preferences_client` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  ht_preferences_client:
    git:
        url: https://github.com/headlines-toolkit/ht-preferences-client.git
        ref: main
```

## Usage

```dart
import 'package:ht_preferences_client/ht_preferences_client.dart';

void main() async {
  // Initialize the client (replace with your actual implementation)
  final client = HtPreferencesClient();

  // --- Language ---

  // Get the user's preferred language.
  final language = await client.getLanguage();
  print('Language: $language');

  // Set the user's preferred language.
  await client.setLanguage('en');

  // --- Theme ---

  // Get the user's preferred theme.
  final theme = await client.getTheme();
  print('Theme: $theme');

  // Set the user's preferred theme.
  await client.setTheme(ThemeMode.dark);

  // --- Headline Article Text Size ---

  // Get the user's preferred headline article text size.
  final headlineArticleTextSize = await client.getHeadlineArticleTextSize();
  print('Headline article text size: $headlineArticleTextSize');

  // Set the user's preferred headline article text size.
  await client.setHeadlineArticleTextSize(HeadlineArticleTextSize.large);

  // --- App Font Size ---

  // Get the user's preferred app font size.
  final appFontSize = await client.getAppFontSize();
  print('App font size: $appFontSize');

  // Set the user's preferred app font size.
  await client.setAppFontSize(AppFontSize.large);

  // --- Followed Source IDs ---

  // Get the user's followed source IDs.
  final followedSources = await client.getFollowedSourceIds();
  print('Followed sources: $followedSources');

  // Set the user's followed source IDs.
  await client.setFollowedSourceIds(['source_id_1', 'source_id_2']);

  // Add a followed source.
  await client.addFollowedSourceId('source_id_3');

  // Remove a followed source.
  await client.removeFollowedSourceId('source_id_1');

    // Remove all followed sources.
  await client.removeAllFollowedSourceIds();

  // --- Followed Category IDs ---

  // Get the user's followed category IDs.
  final followedCategories = await client.getFollowedCategoryIds();
  print('Followed categories: $followedCategories');

  // Set the user's followed category IDs.
  await client.setFollowedCategoryIds(['category_id_1', 'category_id_2']);

  // Add a followed category.
  await client.addFollowedCategoryId('category_id_3');

  // Remove a followed category.
  await client.removeFollowedCategoryId('category_id_1');

  // Remove all followed categories.
  await client.removeAllFollowedCategoryIds();

  // --- Followed Event Country IDs ---

  // Get the user's followed event country IDs.
  final followedCountries = await client.getFollowedEventCountryIds();
  print('Followed countries: $followedCountries');

  // Set the user's followed event country IDs.
  await client.setFollowedEventCountryIds(['country_id_1', 'country_id_2']);

  // Add a followed event country.
  await client.addFollowedEventCountryId('country_id_3');

  // Remove a followed event country.
  await client.removeFollowedEventCountryId('country_id_1');

    // Remove all followed event countries.
  await client.removeAllFollowedEventCountryIds();

  // --- Saved Headlines ---

  // Get the user's saved headlines.
  final savedHeadlines = await client.getSavedHeadlines();
  print('Saved headlines: $savedHeadlines');

  // Set the user's saved headlines.
  await client.setSavedHeadlines(['headline_id_1', 'headline_id_2']);

  // Add a saved headline.
  await client.addSavedHeadline('headline_id_3');

  // Remove a saved headline.
  await client.removeSavedHeadline('headline_id_1');

    // Remove all headlines from the user's saved headlines.
  await client.removeAllSavedHeadlines();

  // --- Content Density ---

  // Get the user's preferred content density.
  final contentDensity = await client.getContentDensity();
  print('Content density: $contentDensity');

  // Set the user's preferred content density.
  await client.setContentDensity(ContentDensity.compact);

  // --- Feed Tile Layout ---
    // Get the user's preferred feed tile layout.
  final feedTileLayout = await client.getFeedTileLayout();
  print('Feed tile layout: $feedTileLayout');

  // Set the user's preferred feed tile layout.
  await client.setFeedTileLayout(FeedTileLayout.imageTop);
}

```

## Features

*   Get and set user's preferred language.
*   Get and set user's preferred theme (light, dark, system).
*   Get and set user's preferred headline article text size (small, medium, large).
*   Get and set user's preferred app font size (small, medium, large).
*   Manage a list of followed news source IDs.
*   Manage a list of followed news category IDs.
*   Manage a list of followed event country IDs.
*   Manage a list of saved headlines (serialized strings).
*   Get and set user's preferred content density (compact, comfortable).
*   Get and set user's preferred feed tile layout (imageTop, imageStart, textOnly).

## Issues

Please file any issues, bugs, or feature requests at the [issue tracker](https://github.com/headlines-toolkit/ht-preferences-client/issues).

## License

See the [LICENSE](LICENSE) file for details.
