import 'package:flutter/material.dart';

import '../../data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
    );
  }
}
