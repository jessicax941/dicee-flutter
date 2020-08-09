import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 5;
  int rightDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNum = 1;
                  print("left button got pressed");
                });
              },
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNum = 2;
                  print("right button got pressed");
                });
              },
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}

//class DicePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    int leftDiceNum = 5;
//
//    return Center(
//      child: Row(
//        children: [
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                print("left button got pressed");
//              },
//              child: Image.asset('images/dice$leftDiceNum.png'),
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              onPressed: () {
//                print("right button got pressed");
//              },
//              child: Image.asset('images/dice1.png'),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
