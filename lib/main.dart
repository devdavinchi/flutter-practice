import 'package:flutter/material.dart';

import 'views/widget_tree.dart';

void main() {
  runApp(const HomePage());
}

String title = "Dev's App";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black12,
          brightness: Brightness.dark,
        ),
      ),

      home: WidgetTree(),
    );
  }
}
