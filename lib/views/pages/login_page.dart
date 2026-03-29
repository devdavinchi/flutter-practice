import 'package:first_flutter_app/views/pages/hero_widget.dart';
import 'package:flutter/material.dart';

TextEditingController controller = TextEditingController();
TextEditingController passwordControl = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  void dispose() {
    //disposing
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(title: "HeroLogin"),

              SizedBox(height: 20.0),
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: passwordControl,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
