# ht_preferences_client

Abstract client for managing user preferences for the headlines toolkit app.

## Description

This package provides the `HtPreferencesClient` **abstract class**, which defines an interface for managing user preferences within the headlines toolkit app. It **does not provide a concrete implementation** for storing or retrieving these preferences. Instead, it defines the contract that concrete implementations must adhere to.

This package also includes data models, enums, and exceptions related to user preferences.

## Getting started

To use this package, add `ht_preferences_client` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  ht_preferences_client:
    git:
        url: https://github.com/headlines-toolkit/ht-preferences-client.git
        ref: main
```

## Features

This package defines the `HtPreferencesClient` interface for managing the following types of user preferences:

*   App Settings (`AppSettings`): App-level settings such as font size and font type.
*   Article Settings (`ArticleSettings`): Settings related to article display, such as font size.
*   Theme Settings (`ThemeSettings`): Settings for the app's theme (e.g., light/dark mode, theme name).
*   Feed Settings (`FeedSettings`): Settings related to the news feed (e.g., list tile type).
*   Notification Preferences (`NotificationPreferences`): Settings for enabling/disabling notifications and configuring notification preferences for specific categories and sources.
*   Bookmarked Headlines (`List<Headline>`): A list of bookmarked news headlines.
*   Followed Sources (`List<Source>`): A list of news sources the user follows.
*   Followed Categories (`List<Category>`): A list of news categories the user follows.
*   Followed Event Countries (`List<Country>`): A list of countries for which the user wants to see news.
*   Article Reading History (`List<Headline>`): A list of recently read articles.

This package also includes:

*   Data Models (under `lib/src/models/`): Classes representing the different preference types (e.g., `AppSettings`, `ThemeSettings`).
*   Enums (under `lib/src/enums/`): Enumerations defining the possible values for certain settings (e.g., `AppThemeMode`, `FontSize`).
*   Custom Exceptions (in `lib/src/exceptions.dart`): Exceptions that can be thrown when retrieving or updating preferences.

## Usage

This package provides the abstract `HtPreferencesClient`. Your application will need a concrete implementation of this class (e.g., one using `shared_preferences`, `hive`, or another storage mechanism). This concrete implementation should then be provided to the parts of your application that need to manage preferences, typically using a dependency injection pattern.

**Example (Conceptual - using flutter_bloc/repository pattern):**

Imagine you have a `SettingsRepository` that depends on `HtPreferencesClient`:

```dart
import 'package:ht_preferences_client/ht_preferences_client.dart';

class SettingsRepository {
  final HtPreferencesClient _preferencesClient;

  SettingsRepository({required HtPreferencesClient preferencesClient})
      : _preferencesClient = preferencesClient;

  Future<ThemeSettings> getThemeSettings() async {
    try {
      return await _preferencesClient.getThemeSettings();
    } on ThemeSettingsNotFoundException {
      // Handle case where settings don't exist yet, maybe return defaults
      return const ThemeSettings(themeMode: AppThemeMode.system, themeName: AppThemeName.blue);
    } catch (e) {
      // Handle other potential errors
      rethrow;
    }
  }

  Future<void> saveThemeSettings(ThemeSettings settings) async {
    await _preferencesClient.setThemeSettings(settings);
  }

  // ... other methods wrapping HtPreferencesClient calls ...
}
```

Then, in your application setup (e.g., using `flutter_bloc`'s `RepositoryProvider`), you would provide the *concrete implementation* of `HtPreferencesClient` to the `SettingsRepository`:

```dart
// In your main application setup or dependency injection configuration:

// Assuming 'ConcretePreferencesClient' is your actual implementation
final concretePreferencesClient = ConcretePreferencesClient(/* ... */);

// Provide the repository, injecting the concrete client
RepositoryProvider(
  create: (context) => SettingsRepository(
    preferencesClient: concretePreferencesClient,
  ),
  child: // ... rest of your app ...
),

// Later, in a BLoC or Widget, you can access the repository:
// final settingsRepository = context.read<SettingsRepository>();
// final currentTheme = await settingsRepository.getThemeSettings();
```

This approach decouples your application logic from the specific storage mechanism used for preferences.

## Issues

Please file any issues, bugs, or feature requests at the [issue tracker](https://github.com/headlines-toolkit/ht-preferences-client/issues).

## License

See the [LICENSE](LICENSE) file for details.
