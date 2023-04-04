// Flutter Files
import 'package:flutter/material.dart';

// Our Files
import 'reusable_widgets.dart';

/// The Menu Page and all its wonderful contents
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: mainAppBar(),
        drawer: mainDrawer(context), // Reusable Drawer
        body: const TabBarView(children: <Widget>[
          //! This section will soon contain accordion buttons
          //! and a list when there is data to be read but for now
          //! there is nothing
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
