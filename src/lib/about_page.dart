// Flutter Files
import 'package:flutter/material.dart';
import 'dart:io' show Platform; // Allows us to see users platform
// import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart'; // Allows for links on tap
import 'package:ionicons/ionicons.dart'; // Custom Icons
// Search for Icons here - https://ionic.io/ionicons/

// Our Files
import 'reusable_widgets.dart';

// Urls Used in About Page

final Uri githubUrl =
    Uri.parse('https://github.com/RPI-Food-Finder/RPIFoodFinder');
//! When Discord is made add invite link on tap
final Uri discordUrl = Uri.parse('');
//! When deployed to distributors add review link
final Uri playstoreUrl = Uri.parse('');
final Uri appstoreUrl = Uri.parse('');
final Uri rcosUrl = Uri.parse('https://new.rcos.io/');

// Url Launcher
Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch url');
  }
}

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
        ListTile(
          // Github Repo
          contentPadding: const EdgeInsets.all(20),
          leading: const Icon(Ionicons.logo_github),
          title: const Text("Github Repository"),
          subtitle: const Text("Click me!"),
          onTap: () async {
            await _launchUrl(githubUrl);
          },
        ),
        ListTile(
          // Discord
          contentPadding: const EdgeInsets.all(20),
          leading: const Icon(Ionicons.logo_discord),
          title: const Text("Join our Discord"),
          subtitle: const Text("Click me!"),
          onTap: () async {
            await _launchUrl(discordUrl);
          },
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
          onTap: () async {
            (Platform.isIOS)
                ? (await _launchUrl(appstoreUrl))
                : (await _launchUrl(playstoreUrl));
          },
        ),
        ListTile(
          // RCOS
          contentPadding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          leading: const Image(
              image: AssetImage(
                  'assets/rcos.png')), //! Add RCOS logo as svg icon and add as an icon
          title: const Text("A Rensselaer Center for Open Source Project"),
          subtitle: const Text("Click me!"),
          onTap: () async {
            await _launchUrl(rcosUrl);
          },
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
