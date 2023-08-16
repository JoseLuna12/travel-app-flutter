import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  Widget getMenuItem(bool isActive, String title) {
    Color getCurrentColor = isActive
        ? const Color.fromRGBO(82, 166, 147, 1)
        : const Color.fromRGBO(192, 192, 192, 1);
    FontWeight getFontWeight = isActive ? FontWeight.bold : FontWeight.normal;

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Text(
              ".",
              style: TextStyle(
                color: getCurrentColor,
                fontWeight: getFontWeight,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: getCurrentColor,
                fontWeight: getFontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          getMenuItem(true, "Indonesia"),
          getMenuItem(false, "Thailand"),
          getMenuItem(false, "China"),
          getMenuItem(false, "Thailand"),
          getMenuItem(false, "China"),
          getMenuItem(false, "Thailand"),
          getMenuItem(false, "China"),
        ],
      ),
    );
  }
}
