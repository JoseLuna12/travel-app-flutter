import 'package:flutter/material.dart';
import 'package:travelapp/bottom_nav_bar.dart';
import 'package:travelapp/custom_app_bar.dart';
import 'package:travelapp/places_scroll_view.dart';
import 'package:travelapp/scrollable_top_menu.dart';
import 'package:travelapp/top_destinations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: const MyAppBar(),
        bottomNavigationBar: const Navigationbar(),
        body: Container(
          color: const Color.fromARGB(255, 239, 239, 239),
          child: const AppBody(),
        ),
      ),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: const TopMenu(),
        ),
        const SizedBox(
          height: 20,
        ),
        Places(),
        const DestinationParent()
      ],
    );
  }
}
