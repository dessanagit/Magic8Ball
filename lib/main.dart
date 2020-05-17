import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything',
            style: TextStyle(
              fontSize: 30,
            )),
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.blue[400],
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(
              () {
                ballNumber = Random().nextInt(5) + 1;
                print('I got Clicked!');
              },
            );
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
