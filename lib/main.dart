import 'package:first_flutter_app/data/constants.dart';
import 'package:first_flutter_app/data/notifiers.dart';
import 'package:first_flutter_app/views/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  @override
  void initState() {
    themeMode();
    super.initState();
  }

  void themeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? repeat = prefs.getBool(KConstants.isDarkKey);
    themeChanger.value = repeat ?? false;
  }

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
