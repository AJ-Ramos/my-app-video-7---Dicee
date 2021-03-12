import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: DicePage(),
      ),
    );
  }
}



class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftdice = 1;
  var rightdice = 1;

void dicechange (){
         rightdice = Random().nextInt(6)+1;
         print('right dice = $rightdice');
         leftdice = Random().nextInt(6)+1;
         print('left dice = $leftdice');
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dicechange();
                });
              },
              child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  dicechange();
                });
              },
              child: Image.asset('images/dice$leftdice.png'),
            ),
          ),
        ],
      ),
    );
  }
}