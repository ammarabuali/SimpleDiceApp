import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var activeDiceImg = "assets/images/dice-1.png";
  bool isLoading = false;

  void rollDice() {
    setState(() {
      isLoading = true;
    });

    var diceRoll = randomizer.nextInt(6) + 1;

    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        activeDiceImg = "assets/images/dice-$diceRoll.png";
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isLoading
              ? const CircularProgressIndicator(
                  color: Color.fromARGB(255, 236, 222, 91))
              : Image.asset(
                  activeDiceImg,
                  width: 200,
                ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 236, 222, 91),
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text("Roll Dice!!"))
        ],
      ),
    );
  }
}
