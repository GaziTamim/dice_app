import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(const Dice_App());
}

class Dice_App extends StatefulWidget {
  const Dice_App({Key? key}) : super(key: key);

  @override
  State<Dice_App> createState() => _Dice_AppState();
}

class _Dice_AppState extends State<Dice_App> {
  var leftDiceNumber = 6;
  var rightDiceNumber = 2;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Dice App"),
          elevation: 0,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                      child: Image.asset("images/dice$leftDiceNumber.png"),
                    onPressed: (){
                        changeDiceFace();
                    },
                  ),
                ),

                Expanded(
                  child: TextButton(
                    child: Image.asset("images/dice$rightDiceNumber.png"),
                    onPressed: (){
                      changeDiceFace();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
