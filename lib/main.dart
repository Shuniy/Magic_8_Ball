import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          title: Text('Ask Me Anything !'),
          backgroundColor: Colors.blue[600],
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _magicBallState createState() => _magicBallState();
}

class _magicBallState extends State<MagicBall> {
  int popUp = 1;

  void changeDiceNumber() {
    popUp = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    changeDiceNumber();
                  });
                },
                child: Image.asset('images/ball$popUp.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
