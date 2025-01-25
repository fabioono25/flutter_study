import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {

  GradientContainer({super.key, required this.colors});

  // another constructor
  GradientContainer.purple({super.key})
      : colors = [
          Color.fromARGB(255, 81, 35, 88),
          Color.fromARGB(255, 147, 92, 165),
          Color.fromARGB(255, 108, 92, 165),
        ];

  final List<Color> colors;

  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    // print('Dice rolled');
    activeDiceImage = 'assets/images/dice-2.png';
  }

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
      child: DiceRoller(),
      // child: Center(
      //   child: StyledText("Hey, I am a value here.", TextStyle(fontSize: 30, color: Colors.white)),
      // ),
    );
  }
}
