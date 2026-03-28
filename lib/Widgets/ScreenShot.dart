import 'package:flutter/material.dart';

class ScreenShotPage extends StatelessWidget {
  const ScreenShotPage({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/photos/1.png",
      "assets/photos/2.png",
      "assets/photos/3.png",
      "assets/photos/4.png",
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Screen Shots',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: images
                .map((e) => Image.asset(e, width: 150, height: 200))
                .toList(),
          ),
        ),
      ],
    );
  }
}
