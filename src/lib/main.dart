import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainAppBar());
  }
}

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("RPI Food Finder"),
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
          ])),
    );
  }
}
