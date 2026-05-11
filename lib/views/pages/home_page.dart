import 'package:first_flutter_app/data/constants.dart';
import 'package:first_flutter_app/views/pages/container_widget.dart';
import 'package:first_flutter_app/views/pages/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: HeroWidget(title: "HeroHome"),
            ),
            ContainerWidget(
              title: KValue.HeroTitle,
              description: "this is description",
            ),
            ContainerWidget(
              title: KValue.HeroWannaBe,
              description: "this is description",
            ),
            ContainerWidget(
              title: KValue.HeroTitle,
              description: "this is description",
            ),
            ContainerWidget(
              title: KValue.HeroTitle,
              description: "this is description",
            ),
            ContainerWidget(
              title: KValue.HeroTitle,
              description: "this is description",
            ),
          ],
        ),
      ),
    );
  }
}
