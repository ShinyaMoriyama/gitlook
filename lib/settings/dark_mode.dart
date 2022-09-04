import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DarkMode extends StatelessWidget {
  const DarkMode({Key? key}) : super(key: key);

  List<SettingsTile> _tiles(Box box) => ThemeMode.values
      .map((e) => SettingsTile(
            title: Text(e.name),
            trailing: e.name == box.get("darkMode", defaultValue: "system")
                ? const FaIcon(FontAwesomeIcons.check)
                : null,
            onPressed: (BuildContext context) {
              box.put("darkMode", e.name);
            },
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("darkMode")),
      body: ValueListenableBuilder(
        valueListenable: Hive.box('settings').listenable(),
        builder: (context, Box box, _) {
          return SettingsList(
            sections: [
              SettingsSection(tiles: _tiles(box)),
            ],
          );
        },
      ),
    );
  }
}
