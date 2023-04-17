// Flutter Files
import 'package:flutter/material.dart';
import 'dart:io' show Platform; // Allows us to see users platform
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart'; // Allows for links on tap
import 'package:ionicons/ionicons.dart'; // Custom Icons
// Search for Icons here - https://ionic.io/ionicons/

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
      body: Column(children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 80, bottom: 50),
          child: Center(
            child: Text(
              "Logo goes here",
              style: TextStyle(fontSize: 40),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20, right: 30, left: 30),
          child: Center(child: Text(placeholderText)),
        ),
        const ListTile(
          // Github Repo
          contentPadding: EdgeInsets.all(20),
          leading: Icon(Ionicons.logo_github),
          title: Text("Github Repository"),
          subtitle: Text("Click me!"),
          onTap: null, //! Add main Github repo when ready
        ),
        const ListTile(
          // Discord
          contentPadding: EdgeInsets.all(20),
          leading: Icon(Ionicons.logo_discord),
          title: Text("Join our Discord"),
          subtitle: Text("Click me!"),
          onTap: null, //! When Discord is made add invite link on tap
        ),
        ListTile(
          // Rate Us!
          contentPadding: const EdgeInsets.all(20),
          leading: (Platform.isAndroid)
              ? (const Icon(Ionicons.logo_google_playstore))
              : (Platform.isIOS)
                  ? (const Icon(Ionicons.logo_apple_appstore))
                  : (const Icon(Ionicons.star)),
          title: const Text("Rate us!"),
          subtitle: const Text("Click me!"),
          onTap: null, //! When deployed to distributors add review link
        ),
        const ListTile(
          // RCOS
          contentPadding: EdgeInsets.only(top: 20, left: 20, right: 20),
          // leading: Icon(), //! Add RCOS logo as svg icon and add as an icon
          title: Text("A Rensselaer Center for Open Source Project"),
          subtitle: Text("Click me!"),
          onTap: null, //! Add https link to new.rcos.io
        )
      ]),
    );
  }
}

const String placeholderText =
    // ignore: prefer_interpolation_to_compose_strings
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod " +
        "tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam," +
        " quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo " +
        "consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse " +
        "cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat " +
        "non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
