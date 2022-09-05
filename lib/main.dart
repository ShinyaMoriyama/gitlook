import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import './home_page.dart';
import './constant.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(boxNameSettings);

  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends HookWidget {
  const MyApp({Key? key}) : super(key: key);

  ThemeData themeLight() => FlexThemeData.light(
        scheme: FlexScheme.outerSpace,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 20,
        appBarOpacity: 0.95,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          blendOnColors: false,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
      );

  ThemeData themeDark() => FlexThemeData.dark(
        scheme: FlexScheme.outerSpace,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 15,
        appBarOpacity: 0.90,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 30,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
      );

  @override
  Widget build(BuildContext context) {
    final box = useValueListenable(Hive.box(boxNameSettings).listenable());
    final themeMode = box.get(fieldDarkMode, defaultValue: themeModeSystem);

    return MaterialApp(
      // title: 'GitHub Repository',
      theme: themeLight(),
      darkTheme: themeDark(),
      themeMode: ThemeMode.values.byName(themeMode),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
