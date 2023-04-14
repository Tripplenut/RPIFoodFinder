// Flutter Files
import 'package:flutter/material.dart';

// Our Files
import 'reusable_widgets.dart';

// The About Page and all its wonderful contents
class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

// About Page State
class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar(false),
      drawer: mainDrawer(context),
      body: const Center(
        child: Text("About page pog champ"),
      ),
    );
  }
}
