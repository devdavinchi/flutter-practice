import 'package:first_flutter_app/data/notifiers.dart';
import 'package:first_flutter_app/views/pages/hero_widget.dart';
import 'package:flutter/material.dart';

import '../widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            HeroWidget(),
            FittedBox(
              child: Text(
                "Fanny",
                style: TextStyle(fontWeight: FontWeight(400), fontSize: 100.0),
              ),
            ),
            SizedBox(height: 20.0),
            FilledButton(
              onPressed: () {
                selectedPageNotifier.value = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text("Get Started"),
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50.0),
              ),
            ),
            SizedBox(height: 20.0),
            TextButton(
              onPressed: () {},
              child: Text("Login"),
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 50.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
