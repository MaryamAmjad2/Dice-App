import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int diceOne = 6;
  int diceTwo = 6;
  void changingDice() {
    diceOne = Random().nextInt(6) + 1;
    diceTwo = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    //int diceOne = 6;
    //int diceTwo = 6;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade500,
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Center(
            child: Text(
              'Dice App',
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
          ),
        ),
        body: Center(
          child: Row(children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      changingDice();
                    });
                  },
                  child: Image.asset('images/dice$diceOne.png')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      changingDice();
                    });
                    print('Right Button Pressed');
                  },
                  child: Image.asset('images/dice$diceTwo.png')),
            ),
          ]),
        ),
      ),
    );
  }
}
