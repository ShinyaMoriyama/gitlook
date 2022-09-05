import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:gitlook/main.dart';
import './data/hive_setup.dart';

void main() {
  setUpAll(() async {
    await setUpTestHive();
  });

  tearDownAll(() async {
    await tearDownTestHive();
  });

  group("Test widgets", () {
    testWidgets('App title', (WidgetTester tester) async {
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
}
