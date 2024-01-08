import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentImage = 3;

  void rolldice() {
    setState(() {
      currentImage = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentImage.png',
          width: 200,
        ),
        const SizedBox(height: 50),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text(
              'Roll Dice',
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }
}
