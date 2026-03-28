import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: "hero1",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: SizedBox(
              width: 600.0,
              height: 400.0,

              child: Image.asset(
                "assets/images/fanny.jpg",
                color: Colors.purple,
                colorBlendMode: BlendMode.softLight,
              ),
            ),
          ),
        ),
        FittedBox(
          child: Text(
            "I am hero",
            style: TextStyle(
              fontSize: 50.0,
              color: Colors.white,
              letterSpacing: 10,
            ),
          ),
        ),
      ],
    );
  }
}
