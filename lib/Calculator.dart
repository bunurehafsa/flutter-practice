import 'package:flutter/material.dart';

class CalculatorScreen2 extends StatefulWidget {
  const CalculatorScreen2({super.key});

  @override
  State<CalculatorScreen2> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen2> {
  String _output = '';
  String _operator = '';
  int input1 = 0;
  int input2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: AppBar(
        title: Center(child: Text('Simple Calculator')),
        backgroundColor: Colors.blueGrey.shade100,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 25),
                  Container(
                    width: 300,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            _output,
                            style: TextStyle(fontSize: 30, color: Colors.white38),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildButtonRow(['Ac', 'Del', 'sin', '*'], [Colors.white30, Colors.white30, Colors.blueAccent, Colors.white30], 
                        //[handleClearPress, handleDeletePress, handleOperatorPress, handleOperatorPress]
                        ),
                        buildButtonRow([7, 8, 9, '-'], [Colors.white, Colors.white, Colors.white, Colors.white30]),
                        buildButtonRow([4, 5, 6, '+'], [Colors.white, Colors.white, Colors.white, Colors.white30]),
                        buildButtonRow([1, 2, 3, '/'], [Colors.white, Colors.white, Colors.white, Colors.white30]),
                        buildButtonRow([0, '.', 'e', '='], [Colors.white, Colors.white, Colors.white, Colors.blue.shade400]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void handleNumberPress(int input) {
    setState(() {
      _output += input.toString();
      if (_operator.isEmpty) {
        input1 = (input1 * 10) + input;
      } else {
        input2 = (input2 * 10) + input;
      }
    });
  }

  void handleOperatorPress(String optr) {
    setState(() {
      _operator = optr;
      _output += optr;
    });
  }

  void handleClearPress() {
    setState(() {
      _output = '';
      _operator = '';
      input1 = 0;
      input2 = 0;
    });
  }

  void handleDeletePress() {
    setState(() {
      if (_output.isNotEmpty) {
        _output = _output.substring(0, _output.length - 1);
        if (_operator.isEmpty) {
          input1 = input1 ~/ 10;
        } else if (input2 > 0) {
          input2 = input2 ~/ 10;
        } else {
          _operator = '';
        }
      }
    });
  }

  void handleEqualsPress() {
    double tempOutput = 0;
    if (_operator == '+') {
      tempOutput = (input1 + input2).toDouble();
    } else if (_operator == '-') {
      tempOutput = (input1 - input2).toDouble();
    } else if (_operator == '*') {
      tempOutput = (input1 * input2).toDouble();
    } else if (_operator == '/') {
      tempOutput = (input1 / input2).toDouble();
    }
    setState(() {
      _output = tempOutput.toString();
      input1 = tempOutput.toInt();
      input2 = 0;
      _operator = '';
    });
  }

  ButtonStyle buttonStyle(Color color) {
    return ButtonStyle(
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      backgroundColor: MaterialStateProperty.all(color),
      textStyle: MaterialStateProperty.all(
        TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
      ),
      padding: MaterialStateProperty.all(
        EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      ),
    );
  }

  Row buildButtonRow(List<dynamic> elements, List<Color> colors, [List<void Function()>? functions]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: elements.map((element) {
        final color = colors[elements.indexOf(element)];
        final function = functions?[elements.indexOf(element)];
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(7.5),
            child: ElevatedButton(
              style: buttonStyle(color),
              onPressed: () {
                if (element is int) {
                  handleNumberPress(element);
                } else if (element == '.') {
                  handleOperatorPress(element);
                } else if (element == '=') {
                  handleEqualsPress();
                } else if (function != null) {
                  function();
                } else {
                  handleOperatorPress(element);
                }
              },
              child: Text(element.toString()),
            ),
          ),
        );
      }).toList(),
    );
  }
}
