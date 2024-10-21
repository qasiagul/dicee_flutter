
import 'dart:math';

import 'package:dicee_flutter/dicepage.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 5;
  void changeDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDice();
              },
              child: Image.asset('images/dice$leftDiceNumber.png',
              ),
            ),
            ),
          Expanded(
            child:TextButton(
                onPressed: (){
                  changeDice();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')
            ),
            ),
        ],
      ),
    );
  }
}
