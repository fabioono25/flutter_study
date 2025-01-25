import 'dart:math';

import 'package:flutter/material.dart';

// We don't want to create a new instance of Random every time we roll the dice.
final randomizer = Random(); // why: memory optimization. 

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// always work with two classes, when you are working with a StatefulWidget
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;

    // re-evaluate the widget
    setState(() {
      // currentDiceRoll = Random().nextInt(6) + 1;
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });

    // print('Dice rolled');
    // activeDiceImage = 'assets/images/dice-2.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/dice-$currentDiceRoll.png',
              width: 200, height: 200),
          SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 4, 68, 20),
              padding: EdgeInsets.all(20),
              textStyle: TextStyle(fontSize: 15),
            ),
            child: Text('Roll Dice'),
          ),
        ],
      )),
    );
  }
}
