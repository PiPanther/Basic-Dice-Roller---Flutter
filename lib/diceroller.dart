import 'package:flutter/material.dart';
import 'package:restart/styled_text.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/dice-images/dice-1.png';
  void rolldice() {
    var diceroll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/dice-images/dice-$diceroll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 200),
        ElevatedButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const StyledText('Roll Dice'))
      ],
    );
  }
}
