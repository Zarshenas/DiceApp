import "package:flutter/material.dart";
// import "package:my_first_app/custom_text.dart";
import "package:my_first_app/random_dicewidget.dart";

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key, required this.colorsList});
  final List<Color> colorsList;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colorsList,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child:const Center(
        // child: CustomText("Ahmad"),
        child:  RandomDiceWidget()
      ),
    );
  }
}
