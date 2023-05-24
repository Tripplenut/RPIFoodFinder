// Flutter Files
import 'package:flutter/material.dart';

// Our Files
import 'menu_page.dart';

// The app starts running here!
void main() {
  runApp(const MainApp());
}

// The overall widget that the app is built upon
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();

  static State<MainApp> of(BuildContext context) =>
      context.findAncestorStateOfType<_MainAppState>()!;
}

// The State of the Main App
class _MainAppState extends State<MainApp> {
  ThemeMode curTheme = ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MenuPage(), // We always start on the menu page
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: curTheme,
      debugShowCheckedModeBanner: false,
    );
  }

  void changeTheme(ThemeMode tempThemeMode) {
    setState(() {
      curTheme = tempThemeMode;
    });
  }
}
