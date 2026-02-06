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
          leading: Icon(Icons.login_sharp, color: Colors.black),
          actions: [
            Text("back", style: TextStyle(color: Colors.black)),
            Icon(Icons.login_rounded, color: Colors.black),
          ],
          backgroundColor: Colors.grey,
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
            SizedBox(height: 10.10),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                print("button pressed ");
              },
            ),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_filled), label: "home"),
            NavigationDestination(
              icon: Icon(Icons.person_2_rounded),
              label: "profile",
            ),
          ],
          onDestinationSelected: (int value) {
            print(value);
          },
          selectedIndex: 1,
        ),
      ),
    );
  }
}
