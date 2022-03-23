import 'package:flutter/material.dart';
import 'dart:math';
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
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int leftdicenumber=5;
  int rightdicenumber=2;
  @override
  void new_state()
  {
    leftdicenumber=Random().nextInt(6);
    leftdicenumber=leftdicenumber+1;

    rightdicenumber=Random().nextInt(6);
    rightdicenumber=rightdicenumber+1;
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  new_state();
                });
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
            ),
          ),
          Expanded(
              child: TextButton(
                onPressed: (){
                  setState(() {
                    new_state();
                  });
                },
                child: Image.asset('images/dice$rightdicenumber.png'),
              )
          ),
        ],
      ),
    );
  }
}
