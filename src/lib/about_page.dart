// Flutter Files
import 'package:flutter/material.dart';

// Our Files
import 'reusable_widgets.dart';

/// The Settings Page and all its wonderful contents
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
