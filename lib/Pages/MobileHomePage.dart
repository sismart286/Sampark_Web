import 'package:flutter/material.dart';
import 'package:sampark_web/Widgets/Devider.dart';
import 'package:sampark_web/Widgets/MianInfo.dart';
import 'package:sampark_web/Widgets/ScreenShot.dart';
import 'package:sampark_web/Widgets/WebFeatureWidget.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.message),
        title: const Text('Web Home Page'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.download)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16), // reduced for mobile
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MianInfo(),

              const SizedBox(height: 20),
              const MyDevider(),

              const SizedBox(height: 20),

              /// Features Title
              Center(
                child: Text(
                  'Features',
                  style: TextStyle(
                    fontSize: 26, // smaller for mobile
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// Features (VERTICAL STACK)
              const WebFeatureTile(
                icon: Icons.info,
                title: "Easy to use",
                description:
                    "Sampark App is a easy to use app where you can connect with each other",
              ),
              const SizedBox(height: 16),

              const WebFeatureTile(
                icon: Icons.info,
                title: "Easy to use",
                description:
                    "Sampark App is a easy to use app where you can connect with each other",
              ),
              const SizedBox(height: 16),

              const WebFeatureTile(
                icon: Icons.info,
                title: "Easy to use",
                description:
                    "Sampark App is a easy to use app where you can connect with each other",
              ),
              const SizedBox(height: 16),

              const WebFeatureTile(
                icon: Icons.info,
                title: "Easy to use",
                description:
                    "Sampark App is a easy to use app where you can connect with each other",
              ),

              const SizedBox(height: 30),
              const MyDevider(),

              const SizedBox(height: 20),

              const ScreenShotPage(),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
