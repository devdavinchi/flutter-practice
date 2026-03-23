import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login page")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [Text("i am the body")]),
      ),
    );
  }
}
