import './loc_base.dart';

enum LKeys {
  appTitle,
  darkMode,
  searchFor,
  starsLabel,
  watchingLabel,
  forksLabel,
  languageLabel,
}

abstract class LocApp {
  static final Map<String, Map<LKeys, String>> _db = {
    "en": {
      LKeys.appTitle: "GitHub Repository",
      LKeys.darkMode: "Dark Mode",
      LKeys.searchFor: "Search for repositories...",
      LKeys.starsLabel: "stars",
      LKeys.watchingLabel: "watching",
      LKeys.forksLabel: "forks",
      LKeys.languageLabel: "Language",
    },
    "ja": {
      LKeys.appTitle: "GitHub Repository",
      LKeys.darkMode: "ダークモード",
      LKeys.searchFor: "リポジトリを探す...",
      LKeys.starsLabel: "stars",
      LKeys.watchingLabel: "watching",
      LKeys.forksLabel: "forks",
      LKeys.languageLabel: "言語",
    },
  };

  static String translate(LKeys value) {
    return _db[LocBase.language]?[value] ?? "-";
  }
}
