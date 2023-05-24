// Flutter Files
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart'; // Custom Icons
import 'package:rpi_food_finder/main.dart';

// Our Files
import 'reusable_widgets.dart';

// The Settings Page and all its wonderful contents

// Settings Page state
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(false),
      drawer: mainDrawer(context),
      body: ListView(children: <Widget>[
        SwitchListTile(
          title: const Text("Dark Mode"),
          secondary: (darkMode)
              ? const Icon(Ionicons.moon)
              : const Icon(Ionicons.sunny),
          value: darkMode,
          onChanged: (bool value) {
            setState(() {
              darkMode = !darkMode;
            });
          },
          activeTrackColor: Colors.blue,
        ),
      ]),
    );
  }
}
