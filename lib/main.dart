import 'package:first_flutter_app/data/notifiers.dart';
import 'package:first_flutter_app/views/pages/welcome_page.dart';
import 'package:flutter/material.dart';

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
    return ValueListenableBuilder(
      valueListenable: themeChanger,
      builder: (context, themeChan, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.black12,
            brightness: (themeChan ? Brightness.dark : Brightness.light),
          ),
        ),

        home: WelcomePage(),
      ),
    );
  }
}
