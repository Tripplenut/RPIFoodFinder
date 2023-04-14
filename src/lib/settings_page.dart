// Flutter Files
import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(false),
      drawer: mainDrawer(context),
      body: ListView(children: const <Widget>[
        SwitchListTile(
          title: Text("Dark Mode"),
          value: false,
          onChanged: null,
          activeTrackColor: Colors.blue,
        ),
      ]),
    );
  }
}
