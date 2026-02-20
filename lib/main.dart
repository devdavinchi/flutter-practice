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
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dev's App", style: TextStyle(color: Colors.black)),
          centerTitle: false,

          actions: [
            Text("back", style: TextStyle(color: Colors.black)),
            Icon(Icons.login_rounded, color: Colors.black),
          ],
          backgroundColor: Colors.grey,
        ),
        drawer: Drawer(
          backgroundColor: Color(0xFFA9A9A9),
          child: Column(
            children: [
              DrawerHeader(child: Text("head")),
              ListTile(title: Text("mario")),
            ],
          ),
        ),

        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                print("button pressed ");
              },
            ),
            SizedBox(height: 20.10),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                print("button pressed ");
              },
            ),
          ],
        ),
      ),
    );
  }
}
