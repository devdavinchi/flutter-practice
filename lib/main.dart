import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

// stateful can refresh
// stateless can't refresh
// setState to refresh

String title = "Dev's App";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int change = 0;

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

      home: Scaffold(
        appBar: AppBar(
          title: Text(title, style: TextStyle(color: Colors.black)),
          centerTitle: false,

          actions: [
            Text("back", style: TextStyle(color: Colors.black)),
            Icon(Icons.login_rounded, color: Colors.black),
          ],
          backgroundColor: Colors.grey,
        ),

        body: change == 0
            ? Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [Text("dev")]),
                      // SizedBox(width: 10.10),
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
              )
            : Center(child: Text("namita")),
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
          onDestinationSelected: (int value) {
            setState(() {
              change = value;
            });
          },
          selectedIndex: change,
        ),
      ),
    );
  }
}
