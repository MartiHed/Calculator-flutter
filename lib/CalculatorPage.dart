import 'package:flutter/material.dart';
import 'calculatorButton.dart';
import 'Calculator.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final Calculator calculator = Calculator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Color(0xFFfdf0d5)),
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    calculator.getText, // Używaj gettera getText do pobrania tekstu
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Color(0Xffddd7c8), fontSize: 100),
                  ),
                ),
              ],
            ),
            // Została zachowana reszta przycisków kalkulatora
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              calculatorButton('AC', const Color(0xFF4361ee), calculator, () => setState(() {})),
              calculatorButton('±', const Color(0xFF4361ee), calculator, () => setState(() {})),
              calculatorButton('%', const Color(0xFF4361ee), calculator, () => setState(() {})),
              calculatorButton('/', const Color(0xFFb5179e), calculator, () => setState(() {})),
            ]),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              calculatorButton('7', const Color(0xFF3a0ca3), calculator, () => setState(() {})),
              calculatorButton('8', const Color(0xFF3a0ca3), calculator, () => setState(() {})),
              calculatorButton('9', const Color(0xFF3a0ca3), calculator, () => setState(() {})),
              calculatorButton('x', const Color(0xFFb5179e), calculator, () => setState(() {})),
            ]),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              calculatorButton('4', const Color(0xFF3a0ca3), calculator, () => setState(() {})),
              calculatorButton('5', const Color(0xFF3a0ca3), calculator, () => setState(() {})),
              calculatorButton('6', const Color(0xFF3a0ca3), calculator, () => setState(() {})),
              calculatorButton('-', const Color(0xFFb5179e), calculator, () => setState(() {})),
            ]),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              calculatorButton('1', const Color(0xFF3a0ca3), calculator, () => setState(() {})),
              calculatorButton('2', const Color(0xFF3a0ca3), calculator, () => setState(() {})),
              calculatorButton('3', const Color(0xFF3a0ca3), calculator, () => setState(() {})),
              calculatorButton('+', const Color(0xFFb5179e), calculator, () => setState(() {})),
            ]),
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(
                onPressed: () => {},
                child: Text(
                  '0',
                  style: TextStyle(fontSize: 35, color: Color(0xFFfdf0d5)),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(34, 20, 128, 20),
                  shape: const StadiumBorder(),
                  backgroundColor: Color(0xFF3a0ca3),
                ),
              ),
              calculatorButton('.', Color(0xFF3a0ca3), calculator, () => setState(() {})),
              calculatorButton('=', Color(0xFFb5179e), calculator, () => setState(() {})),
            ]),
          ],
        ),
      ),
    );
  }
}
