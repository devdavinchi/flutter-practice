import 'package:first_flutter_app/data/constants.dart';
import 'package:first_flutter_app/views/pages/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.all(8.0), child: HeroWidget()),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("This is me mario", style: TextStylesSelect.BigStyle),
                    Text("Mario forever", style: TextStylesSelect.SmallStyle),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
