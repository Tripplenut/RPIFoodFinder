import 'package:flutter/material.dart';
import 'MenuPage.dart';
import 'AboutPage.dart';
import 'SettingsPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AppHome(),
      theme: ThemeData(
        //brightness: Brightness.dark, Dark Mode stuff. Implement in setting later
        primaryColor: Colors.red[600],
      ),
    );
  }
}

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

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: mainAppBar(),
        drawer: Drawer(
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
        ),
        body: const TabBarView(children: <Widget>[
          Center(
            child: Text("Welcome to Commons Dining Hall!"),
          ),
          Center(
            child: Text("Welcome to Russel Sage Hall!"),
          ),
          Center(
            child: Text("Welcome to BARH Dining Hall!"),
          ),
          Center(
            child: Text("Welcome to Blitman Dining Hall!"),
          ),
        ]),
      ),
    );
  }
}
