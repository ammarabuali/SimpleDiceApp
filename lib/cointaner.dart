import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientCointaner extends StatelessWidget {
  final List<Color> colors;
  const GradientCointaner({required this.colors, super.key});
  GradientCointaner.purple({super.key})
      : colors = [
          Colors.deepPurple,
          Colors.indigo,
        ];

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
