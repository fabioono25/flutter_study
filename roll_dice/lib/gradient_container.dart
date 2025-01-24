import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  // another constructor
  GradientContainer.purple({super.key})
      : colors = [
          Color.fromARGB(255, 81, 35, 88),
          Color.fromARGB(255, 147, 92, 165),
          Color.fromARGB(255, 108, 92, 165),
        ];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: Center(
        child: Image.asset('assets/images/dice-1.png', width: 200, height: 200),
      ),
      // child: Center(
      //   child: StyledText("Hey, I am a value here.", TextStyle(fontSize: 30, color: Colors.white)),
      // ),
    );
  }
}
