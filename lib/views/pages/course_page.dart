import 'dart:convert' as convert;

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  void getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      var itemCount = jsonResponse['activity'];
      debugPrint('Number of books about http: $itemCount.');
    } else {
      debugPrint('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

//thanks flutterMapp
