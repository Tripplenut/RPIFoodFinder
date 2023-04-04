import 'package:flutter/material.dart';

/// This was really just a test to see if an app bar can be a standalone
/// widget which is true but because of the tab functionality this
/// will probably end up being the menu app bar which you can find
/// in its respective file. When the time comes that is.
PreferredSizeWidget mainAppBar() {
  return AppBar(
    title: const Text("RPI Food Finder"),
    centerTitle: true,
    backgroundColor: Colors.red[300],
    bottom: const TabBar(tabs: <Widget>[
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
    ]),
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
          //! Add some navigator stuff here to go to other pages and things of that nature
          //! When the time comes of course
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.info),
        title: const Text('About'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('Settings'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    ]),
  );
}
