import 'package:flutter/material.dart';

class MianInfo extends StatelessWidget {
  const MianInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final isMobile = w < 768;

    return isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _textSection(context, isMobile),
              const SizedBox(height: 20),
              _imageSection(context, isMobile),
            ],
          )
        : Row(
            children: [
              Expanded(child: _textSection(context, isMobile)),
              const SizedBox(width: 20),
              Expanded(child: _imageSection(context, isMobile)),
            ],
          );
  }

  /// TEXT SECTION
  Widget _textSection(BuildContext context, bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset("assets/photos/appIcon.png", width: 40, height: 40),
            SizedBox(width: 10),
            Text(
              "SAMPARK",
              style: TextStyle(
                fontSize: isMobile ? 28 : 40,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ],
        ),
        Text(
          "The Best App For Connecting with",
          style: TextStyle(
            fontSize: isMobile ? 20 : 40,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
        Text(
          "Your Friends",
          style: TextStyle(
            fontSize: isMobile ? 20 : 40,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          "App version*1.0",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w200,
            color: Colors.green,
          ),
        ),

        const SizedBox(height: 10),

        /// DESCRIPTION (NO FIXED WIDTH)
        Text(
          "Sampark is a modern, high-performance chat application designed to bridge the gap between seamless communication and absolute privacy. Built for speed and reliability, Sampark—meaning Connection—empowers users to stay in touch with friends, family, and colleagues through instant messaging, high-quality voice calls, and crisp video conferencing.",
          style: TextStyle(
            fontSize: isMobile ? 13 : 15,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 20),

        /// BUTTON
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20 : 30,
              vertical: isMobile ? 14 : 20,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.android, size: 24, color: Colors.white),
                const SizedBox(width: 10),
                Text(
                  "Download App",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 16 : 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// IMAGE SECTION
  Widget _imageSection(BuildContext context, bool isMobile) {
    return Center(
      child: AspectRatio(
        aspectRatio: 1.2,
        child: Container(
          margin: EdgeInsets.only(top: isMobile ? 10 : 0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle,
            image: const DecorationImage(
              image: AssetImage("assets/photos/main.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
