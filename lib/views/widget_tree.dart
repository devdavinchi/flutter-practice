import 'package:first_flutter_app/data/notifiers.dart';
import 'package:first_flutter_app/views/pages/home_page.dart';
import 'package:first_flutter_app/views/pages/profile_page.dart';
import 'package:flutter/material.dart';

import '../widgets/navi_bar.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dev's App", style: TextStyle(color: Colors.black)),
        centerTitle: false,

        actions: [
          Text("back", style: TextStyle(color: Colors.black)),
          Icon(Icons.login_rounded, color: Colors.black),
        ],
        backgroundColor: Colors.grey,
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) =>
            pages.elementAt(selectedPage),
      ),
      bottomNavigationBar: NaviBar(),
    );
  }
}
