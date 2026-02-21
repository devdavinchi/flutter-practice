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
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
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
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [Text("dev")]),
                  SizedBox(width: 10.10),
                  Column(children: [Text("namita")]),
                ],
              ),

              Row(
                children: [
                  Column(children: [Text("dev")]),
                  SizedBox(width: 10.10),
                  Column(children: [Text("namita")]),
                ],
              ),
            ],
          ),
          drawer: Drawer(
            backgroundColor: Color(0xFFA9A9A9),
            child: Column(
              children: [
                // DrawerHeader(child: Text("head")),
                ListTile(title: Text("mario")),
              ],
            ),
          ),
          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: "home"),
              NavigationDestination(icon: Icon(Icons.people), label: "people"),
            ],
          ),
        ),
      ),
    );
  }
}
