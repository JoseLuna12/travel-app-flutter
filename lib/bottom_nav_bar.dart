import 'package:flutter/material.dart';

class Navigationbar extends StatelessWidget {
  const Navigationbar({super.key});

  Widget createNavBarItem(bool isActive, IconData icon) {
    String dot = isActive ? "•" : "";
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 32,
        ),
        Text(
          dot,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color.fromARGB(255, 239, 239, 239),
        width: double.infinity,
        height: 90,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(82, 166, 147, 1),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                createNavBarItem(true, Icons.house_rounded),
                createNavBarItem(false, Icons.compass_calibration_outlined),
                createNavBarItem(false, Icons.star_border),
                createNavBarItem(false, Icons.person_outlined)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
