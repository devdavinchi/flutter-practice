import 'package:flutter/material.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({super.key});

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  int change = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
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
    );
  }
}
