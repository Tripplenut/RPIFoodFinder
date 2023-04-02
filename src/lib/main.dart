import 'package:flutter/material.dart';

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
        brightness: Brightness.dark,
        primaryColor: Colors.red[300],
      ),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("RPI Food Finder"),
          ),
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
        ),
        drawer: Drawer(
          child: ListView(children: const <Widget>[
            ListTile(
              leading: IconButton(
                onPressed: null,
                icon: Icon(Icons.menu_book),
              ),
              title: Text('Menus'),
            ),
            ListTile(
              leading: IconButton(
                onPressed: null,
                icon: Icon(Icons.info),
              ),
              title: Text('About'),
            ),
            ListTile(
              leading: IconButton(
                onPressed: null,
                icon: Icon(Icons.settings),
              ),
              title: Text('Settings'),
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
