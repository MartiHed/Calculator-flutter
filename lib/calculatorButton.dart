import 'package:flutter/material.dart';
import 'Calculator.dart';

@override
Widget calculatorButton(String buttonText, Color buttonColor, Calculator calc, Function updateState) {
  return Container(
    child: ElevatedButton(
      onPressed: () {
        calc.calculation(buttonText);
        updateState(); // Odśwież widok po kliknięciu przycisku
      },
      child: Text(buttonText, style: TextStyle(fontSize: 35, color: Color(0xFFfdf0d5))),
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: Size(90, 80),
        shape: CircleBorder(),
        padding: EdgeInsets.all(20),
      ),
    ),
  );
}
