import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gitlook/main.dart';
import 'package:gitlook/common/constant.dart';

import './data/hive_setup.dart';

void main() {
  setUpAll(() async {
    await setUpTestHive();
  });

  tearDownAll(() async {
    await tearDownTestHive();
  });

  group("App title", () {
    testWidgets('Showing app title', (WidgetTester tester) async {
      await tester.pumpWidget(const ProviderScope(child: MyApp()));

      expect(find.text('GitHub Repository'), findsOneWidget);
    });
  });
  group("Theme mode", () {
    testWidgets("Default theme mode is system", (WidgetTester tester) async {
      await tester.pumpWidget(const ProviderScope(child: MyApp()));
      final MaterialApp materialApp = tester.widget(find.byType(MaterialApp));

      expect(materialApp.themeMode, ThemeMode.system);
    });
  });

  group("Localization", () {
    Widget localizeTestable(Locale locale) {
      return ProviderScope(
        child: MaterialApp(
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: locale,
          supportedLocales: supportedLocale,
          home: const LocalizedApp(),
        ),
      );
    }

    void checkLanguageTag(WidgetTester tester, String tag) {
      final MaterialApp materialApp = tester.widget(find.byType(MaterialApp));
      expect(materialApp.locale!.toLanguageTag(), tag);

      final BuildContext context =
          tester.element(find.text('GitHub Repository'));
      Locale locale = Localizations.localeOf(context);
      debugPrint(locale.toLanguageTag());
      expect(materialApp.locale!.toLanguageTag(), tag);
    }

    testWidgets("Labels for Japanese are correct", (WidgetTester tester) async {
      await tester.pumpWidget(localizeTestable(const Locale("ja", "JP")));

      checkLanguageTag(tester, "ja-JP");

      expect(find.text('リポジトリを探す...'), findsOneWidget);

      await tester.tap(find.byType(IconButton));
      await tester.pumpAndSettle();

      expect(find.text('ダークモード'), findsOneWidget);
    });

    testWidgets("Labels for English are correct", (WidgetTester tester) async {
      await tester.pumpWidget(localizeTestable(const Locale("en", "US")));

      checkLanguageTag(tester, "en-US");

      expect(find.text('Search for repositories...'), findsOneWidget);

      await tester.tap(find.byType(IconButton));
      await tester.pumpAndSettle();

      expect(find.text('Dark Mode'), findsOneWidget);
    });
  });
}
