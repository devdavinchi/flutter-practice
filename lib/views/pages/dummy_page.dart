import 'package:flutter/material.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dummy Page")),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FittedBox(
                child: Text("I amm  dumb", style: TextStyle(fontSize: 100)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
