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
  final client = HtPreferencesClient();

  // Get the user's preferred language.
  final language = await client.getLanguage();
  print('Language: $language');

  // Set the user's preferred theme.
  await client.setTheme(ThemeMode.dark);

  // Get the user's preferred headline article text size.
  final headlineArticleTextSize = await client.getHeadlineArticleTextSize();
  print('Headline article text size: $headlineArticleTextSize');

  // Set the user's preferred headline article text size.
  await client.setHeadlineArticleTextSize(HeadlineArticleTextSize.large);

  // Get the user's preferred app font size.
  final appFontSize = await client.getAppFontSize();
  print('App font size: $appFontSize');

  // Set the user's preferred app font size.
  await client.setAppFontSize(AppFontSize.large);

  // Add a followed source.
  await client.addFollowedSource('source_id');

  // Get the user's followed category IDs
  final categories = await client.getFollowedCategoryIds();
  print('Followed categories: $categories');

  // Add a saved headline.
  await client.addSavedHeadline('headline_id');

  // Get the user's saved headlines.
  final savedHeadlines = await client.getSavedHeadlines();
  print('Saved headlines: $savedHeadlines');

  // Remove all followed sources.
  await client.removeAllFollowedSourceIds();

  // Remove all followed categories.
  await client.removeAllFollowedCategoryIds();

  // Remove all followed event countries.
  await client.removeAllFollowedEventCountryIds();

  // Get the user's preferred content density.
  final contentDensity = await client.getContentDensity();
  print('Content density: $contentDensity');

  // Set the user's preferred content density.
  await client.setContentDensity(ContentDensity.compact);
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

## Issues

Please file any issues, bugs, or feature requests at the [issue tracker](https://github.com/headlines-toolkit/ht-preferences-client/issues).

## License

See the [LICENSE](LICENSE) file for details.
