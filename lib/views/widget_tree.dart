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
      body: pages.elementAt(1),
      bottomNavigationBar: NaviBar(),
    );
  }
}
