import 'package:flutter/material.dart';
import 'dart:math';

final randomize = Random();

class RandomDiceWidget extends StatefulWidget {
  const RandomDiceWidget({super.key});

  @override
  State<RandomDiceWidget> createState() {
    return _RandomDiceState();
  }
}

class _RandomDiceState extends State<RandomDiceWidget> {
  var diceRoll = 1;
  void clickHandler() {
    setState(() {
      diceRoll = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$diceRoll.png",
          width: 270,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: clickHandler,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text("Click me!"),
        ),
      ],
    );
  }
}
