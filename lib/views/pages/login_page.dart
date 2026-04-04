import 'package:first_flutter_app/views/pages/hero_widget.dart';
import 'package:first_flutter_app/views/widget_tree.dart';
import 'package:flutter/material.dart';

TextEditingController controllerEmail = TextEditingController();
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
    controllerEmail.dispose();
    passwordControl.dispose();
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
                controller: controllerEmail,
                decoration: InputDecoration(
                  hintText: "Email here...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                ),
                onEditingComplete: () {
                  setState(() {});
                },

                //commit
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: passwordControl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  hintText: "Password",
                ),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              SizedBox(height: 20.0),
              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WidgetTree();
                      },
                    ),
                  );
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 50.0),
                  backgroundColor: Colors.cyanAccent,
                  foregroundColor: Colors.black87,
                  textStyle: TextStyle(fontSize: 20.0),
                ),

                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
