import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController control = TextEditingController();
  bool? isChecked = false;
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            TextField(
              controller: control,
              decoration: InputDecoration(
                hintText: "Enter your text here ",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple, width: 2),
                ),
              ),
              onEditingComplete: () => setState(() {}),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Checkbox(
                    tristate: true,
                    value: isChecked,
                    onChanged: (bool? value) => setState(() {
                      isChecked = value;
                    }),
                  ),

                  CheckboxListTile(
                    title: Text(control.text),
                    subtitle: Column(
                      children: [
                        Text("this is the end"),
                        Text(
                          "this is the start",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    tristate: true,
                    value: isChecked,
                    onChanged: (bool? value) => setState(() {
                      isChecked = value;
                    }),
                  ),

                  Switch(
                    value: isSwitch,
                    onChanged: (bool value) => setState(() {
                      isSwitch = value;
                    }),
                  ),
                  SwitchListTile(
                    activeThumbColor: Colors.red,
                    inactiveThumbColor: Colors.purple,
                    trackOutlineColor: WidgetStatePropertyAll(Colors.black),

                    title: Text("shubham "),
                    value: isSwitch,
                    onChanged: (bool value) => setState(() {
                      isSwitch = value;
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
