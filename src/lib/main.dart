// Flutter Files
import 'package:flutter/material.dart';

// Our Files
import 'menu_page.dart';
import 'about_page.dart';
import 'settings_page.dart';
import 'reusable_widgets.dart';

/// The app starts running here!
void main() {
  runApp(const MainApp());
}

/// The overall widget that the app is built upon
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MenuPage(), // We always start on the menu page
      theme: ThemeData(
        //brightness: Brightness.dark, Dark Mode stuff. Implement in setting later
        primaryColor: Colors.red[600],
      ),
    );
  }
}
