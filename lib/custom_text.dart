import "package:flutter/material.dart";

class CustomText extends StatelessWidget {
  const CustomText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        color: Color.fromARGB(255, 70, 19, 119),
      ),
    );
  }
}
