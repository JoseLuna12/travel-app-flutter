import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar(
      {super.key, this.preferredSize = const Size.fromHeight(kToolbarHeight)});

  final Color buttonsBgColor = const Color.fromARGB(255, 238, 238, 238);
  final Color iconsConols = const Color.fromARGB(255, 92, 103, 115);
  final Color darkGray = const Color.fromARGB(255, 92, 103, 115);

  final double whConsrains = 50;

  Container iconHolder(Icon icon) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: whConsrains,
        maxWidth: whConsrains,
        minHeight: whConsrains,
        minWidth: whConsrains,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: buttonsBgColor,
      ),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            iconHolder(const Icon(Icons.menu)),
            Text(
              "Discover",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: darkGray,
              ),
            ),
            iconHolder(const Icon(Icons.search)),
          ],
        ),
      ),
    );
  }

  @override
  final Size preferredSize;
}
