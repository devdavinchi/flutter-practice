import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless
//materialapp
//scaffold

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
      ),
      home: Scaffold(),
    );
  }
}
