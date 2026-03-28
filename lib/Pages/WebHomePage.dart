import 'package:flutter/material.dart';
import 'package:sampark_web/Widgets/Devider.dart';
import 'package:sampark_web/Widgets/MianInfo.dart';
import 'package:sampark_web/Widgets/ScreenShot.dart';
import 'package:sampark_web/Widgets/WebFeatureWidget.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.message),
        title: Text('Web Home Page'),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.download),
            label: Text("Download app"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MianInfo(),
              SizedBox(height: 40),
              MyDevider(),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Features',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureTile(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "Sampark App is a easy to use app where you can connect with each other",
                  ),
                  WebFeatureTile(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "Sampark App is a easy to use app where you can connect with each other",
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WebFeatureTile(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "Sampark App is a easy to use app where you can connect with each other",
                  ),
                  WebFeatureTile(
                    icon: Icons.info,
                    title: "Easy to use",
                    description:
                        "Sampark App is a easy to use app where you can connect with each other",
                  ),
                ],
              ),
              SizedBox(height: 40),
              MyDevider(),
              SizedBox(height: 40),
              ScreenShotPage(),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
