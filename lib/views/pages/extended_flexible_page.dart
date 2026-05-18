import 'package:flutter/material.dart';

class ExtendedFlexiblePage extends StatelessWidget {
  const ExtendedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Text(
                "Hello"
                "",
              ),
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.green,
              child: Text(
                "Hello"
                "",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
