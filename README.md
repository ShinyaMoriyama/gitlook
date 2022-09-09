# Gitlook

An app to search for Github repositories corresponding with the code check provided by [Yumemi Inc.](https://github.com/yumemi-inc/flutter-engineer-codecheck)

## Features

-   Search for the Git repositories as user input
-   Localization for English and Japanese
-   Dark mode support

## Packages

-   _flutter_hooks_ => listen to text input controller and hive persistence
-   _hooks_riverpod_ => state management to achieve api cache
-   _expandable_ => make the card widget expandable
-   _settings_ui_ => make the setting pages easy to implement
-   _flex_color_scheme_ => prepared dark and light themes

## Technical Achievements

-   Debounce user input to avoid unnecessary api calls
-   Cache the api response to avoid unnecessary api calls
-   Enable to use a personal token which is treated with _.gitignore_
-   Apply constant variables on _constant.dart_ to avoid hard coding
-   Simple localization by _loc_app.dart_ and _loc_base.dart_

## Notes

_assets/configuration.dart_ is necessary.

```
{
    "Authorization": "Bearer <security token code>"
}
```

Set "" as a token code if not available

```
{
    "Authorization": ""
}
```
