import 'package:flutter/material.dart';
import 'menu_page.dart';
import 'settings_page.dart';
import 'about_page.dart';

/// This was really just a test to see if an app bar can be a standalone
/// widget which is true but because of the tab functionality this
/// will probably end up being the menu app bar which you can find
/// in its respective file. When the time comes that is.
/// [tabBarEnb] bool the shows the tab bar
PreferredSizeWidget mainAppBar(bool tabBarEnb) {
  return AppBar(
    title: const Text("RPI Food Finder"),
    centerTitle: true,
    backgroundColor: Colors.red[300],
    bottom: tabBarEnb
        ? const TabBar(tabs: <Widget>[
            Tab(
              text: "Commons",
            ),
            Tab(
              text: "Sage",
            ),
            Tab(
              text: "BARH",
            ),
            Tab(
              text: "Blitman",
            )
          ])
        : null,
  );
}

/// This is the Main Drawer that is used throughout Food Finder
/// Since we have a simple app we are just doing simple navigation's
/// Currently we only have a Menu, About, and Settings Page
/// We can keep all of this inside of the drawer
/// hence why we reuse this in every page
Widget mainDrawer(BuildContext context) {
  return Drawer(
    child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      const DrawerHeader(
        child: Center(child: Text("RPI Food Finder!")),
      ),
      ListTile(
        leading: const Icon(Icons.menu_book),
        title: const Text("Menus"),
        onTap: () {
          Navigator.pop(context); // Closes Drawer
          Navigator.pop(context); // Closes Current Page
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const MenuPage()),
          ); // Opens Menu Page
        },
      ),
      ListTile(
        leading: const Icon(Icons.info),
        title: const Text('About'),
        onTap: () {
          Navigator.pop(context); // Closes Drawer
          Navigator.pop(context); // Closes Current Page
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const AboutPage()),
          );
        },
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('Settings'),
        onTap: () {
          Navigator.pop(context); // Closes Drawer
          Navigator.pop(context); // Closes Current Page
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const SettingsPage()),
          ); // Opens Settings Page
        },
      ),
    ]),
  );
}
