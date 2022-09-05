import './loc_base.dart';

enum LKeys {
  appTitle,
  darkMode,
  searchFor,
  starsLabel,
  watchingLabel,
  forksLabel,
  languageLabel,
  issuesLabel,
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
      LKeys.issuesLabel: "issues",
    },
    "ja": {
      LKeys.appTitle: "GitHub Repository",
      LKeys.darkMode: "ダークモード",
      LKeys.searchFor: "リポジトリを探す...",
      LKeys.starsLabel: "stars",
      LKeys.watchingLabel: "watching",
      LKeys.forksLabel: "forks",
      LKeys.languageLabel: "言語",
      LKeys.issuesLabel: "issues",
    },
  };

  static String translate(LKeys value) {
    return _db[LocBase.language]?[value] ?? "-";
  }
}
