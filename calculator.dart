import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  String _input = "";
  String _output = "";

  void _onButtonPressed(String value) {
    setState(() {
      if (value == "AC") {
        _input = "";
        _output = "";
      } else if (value == "⌫") {
        if (_input.isNotEmpty) {
          _input = _input.substring(0, _input.length - 1);
        }
      } else if (value == "=") {
        try {
          String finalInput = _input.replaceAll("×", "*").replaceAll("÷", "/");
          Parser p = Parser();
          Expression exp = p.parse(finalInput);
          ContextModel cm = ContextModel();
          double result = exp.evaluate(EvaluationType.REAL, cm);
          _output = result.toString();
        } catch (e) {
          _output = "Error";
        }
      } else {
        _input += value;
      }
    });
  }

  Widget buildButton(String label, {Color? color}) {
    return SizedBox(
      width: 70,
      height: 70,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color ?? Colors.grey.shade800,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        onPressed: () => _onButtonPressed(label),
        child: Text(
          label,
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1E),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Calculator"),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Display area
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.centerRight,
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    _input,
                    style: const TextStyle(color: Colors.white70, fontSize: 28),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    _output,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Buttons grid
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildButton("AC", color: Colors.grey.shade700),
                    buildButton("()", color: Colors.grey.shade700),
                    buildButton("%", color: Colors.grey.shade700),
                    buildButton("÷", color: Colors.orangeAccent),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildButton("7"),
                    buildButton("8"),
                    buildButton("9"),
                    buildButton("×", color: Colors.orangeAccent),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildButton("4"),
                    buildButton("5"),
                    buildButton("6"),
                    buildButton("-", color: Colors.orangeAccent),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildButton("1"),
                    buildButton("2"),
                    buildButton("3"),
                    buildButton("+", color: Colors.orangeAccent),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildButton("0"),
                    buildButton("."),
                    buildButton("⌫", color: Colors.grey.shade700),
                    buildButton("=", color: Colors.orange),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
