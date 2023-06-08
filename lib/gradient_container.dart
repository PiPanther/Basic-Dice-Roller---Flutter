import 'package:flutter/material.dart';
import 'package:restart/diceroller.dart';


var startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;

  
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: Alignment.bottomRight),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
