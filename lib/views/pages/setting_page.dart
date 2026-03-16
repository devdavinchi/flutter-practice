import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key, required this.title});

  final String title;

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  TextEditingController control = TextEditingController();
  bool? isChecked = false;
  bool isSwitch = false;
  double slider = 0.0;
  String? classID = "a1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("this is me mario"),
                        behavior: SnackBarBehavior.floating,
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  child: Text("open snackbar"),
                ),
                DropdownButton(
                  value: classID,
                  items: [
                    DropdownMenuItem(value: "a1", child: Text("Class 1")),
                    DropdownMenuItem(value: "a2 ", child: Text("Class 2")),
                    DropdownMenuItem(value: "a3", child: Text("Class 3 ")),
                  ],
                  onChanged: (value) {
                    setState(() {
                      classID = value;
                    });
                  },
                ),

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
                      SwitchListTile.adaptive(
                        thumbColor: WidgetStateProperty.resolveWith<Color?>((
                          Set<WidgetState> states,
                        ) {
                          if (states.contains(WidgetState.selected)) {
                            return Colors.grey;
                          }

                          if (states.contains(WidgetState.pressed)) {
                            return Colors.brown;
                          }

                          return Colors.yellow;
                        }),

                        trackOutlineColor: WidgetStatePropertyAll(Colors.black),

                        title: Text("shubham "),
                        value: isSwitch,
                        onChanged: (bool value) => setState(() {
                          isSwitch = value;
                        }),
                      ),
                      Slider(
                        value: slider,
                        max: 10,
                        divisions: 10,
                        activeColor: Colors.red,
                        onChanged: (double value) => setState(() {
                          slider = value;
                          print(value);
                        }),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("Image selected");
                        },
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          color: Colors.white38,
                        ),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        splashColor: Colors.red,
                        onTap: () {
                          print("Image selected");
                        },
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          // color: Colors.white38,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/fanny.jpg"),
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                        ),
                        child: Text("Click"),
                      ),
                      FilledButton(onPressed: () {}, child: Text("Click")),
                      OutlinedButton(onPressed: () {}, child: Text("Click")),
                      CloseButton(),
                      BackButton(onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
