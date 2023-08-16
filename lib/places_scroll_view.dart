import 'package:flutter/material.dart';
import 'package:travelapp/place_child.dart';

class Places extends StatelessWidget {
  Places({
    super.key,
  });

  final PageController controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        physics: const BouncingScrollPhysics(),
        children: const [
          Place(),
          Place(),
          Place(),
          Place(),
        ],
      ),
    );
  }
}
