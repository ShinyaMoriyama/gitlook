import 'package:flutter/material.dart';
import 'package:gitlook/constant.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../localization/loc_app.dart';

class DarkMode extends HookWidget {
  const DarkMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final box = useValueListenable(Hive.box(boxNameSettings).listenable());
    return Scaffold(
      appBar: AppBar(title: Text(LocApp.translate(LKeys.darkMode))),
      body: SettingsList(
        sections: [
          SettingsSection(tiles: _tiles(box)),
        ],
      ),
    );
  }

  List<SettingsTile> _tiles(Box box) => ThemeMode.values
      .map((e) => SettingsTile(
            title: Text(e.name),
            trailing:
                e.name == box.get(fieldDarkMode, defaultValue: themeModeSystem)
                    ? const FaIcon(FontAwesomeIcons.check)
                    : null,
            onPressed: (BuildContext context) {
              box.put(fieldDarkMode, e.name);
            },
          ))
      .toList();
}
