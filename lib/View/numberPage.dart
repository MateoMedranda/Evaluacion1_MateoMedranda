import 'package:flutter/material.dart';
import '../Controller/numberController.dart';
import '../Widget/calculateButton.dart';
import '../Widget/inputNumber.dart';

class NumberPage extends StatefulWidget{
  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  final controller = numberController();
  final number1Crtl = TextEditingController();
  final number2Crtl = TextEditingController();

  //resultado
  void _calculate(){
    controller.setNumbers(number1Crtl.text, number2Crtl.text);
    final result = controller.calculateFriends();

    Navigator.pushNamed(
        context,
        '/resultFriendship',
        arguments: {
          "friendship": result[0],
          "divisorsN1": result[1],
          "divisorsN2": result[2]
        },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amistad entre números'),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Ingresa números enteros positivos para ver su amistad',
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 30),
            InputNumber(controller: number1Crtl, label: "primer número"),
            SizedBox(height: 10),
            InputNumber(controller: number2Crtl, label: "segundo número"),
            SizedBox(height: 30),
            CalculateButton(onPressed: _calculate),
          ],
        ),
      ),

    );
  }
}