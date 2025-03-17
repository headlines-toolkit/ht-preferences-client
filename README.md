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

  // Add a favorite source.
  await client.addFavoriteSource('source_id');

  // Get the user's favorite category IDs
  final categories = await client.getFavoriteCategoryIds();
  print('Favorite categories: $categories');
}

```

## Features

*   Get and set user's preferred language.
*   Get and set user's preferred theme (light, dark, system).
*   Manage a list of favorite news source IDs.
*   Manage a list of favorite news category IDs.
*   Manage a list of favorite event country IDs.

## Issues

Please file any issues, bugs, or feature requests at the [issue tracker](https://github.com/headlines-toolkit/ht-preferences-client/issues).

## License

See the [LICENSE](LICENSE) file for details.
