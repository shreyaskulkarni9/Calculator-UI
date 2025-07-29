import 'package:flutter/material.dart';
import 'package:flutter_application_2/button_values.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Column(
          children: [
            //output
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(16),
                  child: Text("0",
                      style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end),
                ),
              ),
            ),

            //buttons

            Wrap(
              children: Btn.buttonValues
                  .map(
                    (value) => SizedBox(
                        width: screenSize.width / 4,
                        height: screenSize.width / 5,
                        child: buildButton(value)),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget buildButton(value) {
    return Container(
      color: const Color.fromARGB(255, 44, 44, 44),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          clipBehavior: Clip.hardEdge,
          shape: OutlineInputBorder(
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 39, 39, 39)),
              borderRadius: BorderRadius.circular(25)),
          child: InkWell(
            onTap: () {},
            child: Center(child: Text
            (value,
             style: const TextStyle(
              fontSize: 30, fontWeight:FontWeight.bold)
             )),
          ),
        ),
      ),
      );
  }
}
