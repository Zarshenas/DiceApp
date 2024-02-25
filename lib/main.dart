import "package:flutter/material.dart";
import "package:my_first_app/my_customwidget.dart";

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amberAccent,
      body: MyCustomWidget(
        colorsList: [
          Color.fromRGBO(255, 100, 244, 1),
          Color.fromRGBO(255, 100, 124, 1)
        ],
      ),
    ),
  ));
}
