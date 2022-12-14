import 'package:flutter/material.dart';

const githubSearchPath = "https://api.github.com/search/repositories";
const githubSearchQuery = "q";
const githubSearchPerPageKey = "per_page";
const githubSearchPerPageValue = 20;

const githubResponseZero = {
  "total_count": 0,
  "incomplete_results": false,
  "items": [],
};

const lenMinKeywordSearch = 1;

const animationDurationMS = 500;

const debounceDurationMS = 1000;

const boxNameSettings = "settings";
const fieldDarkMode = "darkMode";

const themeModeSystem = "system";

const supportedLocale = [
  Locale('en', ''),
  Locale('en', 'US'),
  Locale('ja', 'JP'),
];
