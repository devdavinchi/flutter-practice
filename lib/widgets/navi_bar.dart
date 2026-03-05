import 'package:first_flutter_app/data/notifiers.dart';
import 'package:flutter/material.dart';

class NaviBar extends StatelessWidget {
  const NaviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) => NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "home"),
          NavigationDestination(icon: Icon(Icons.people), label: "people"),
        ],

        onDestinationSelected: (int value) {
          selectedPageNotifier.value = value;
        },
        selectedIndex: selectedPage,
      ),
    );
  }
}
