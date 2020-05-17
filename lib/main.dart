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

class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
