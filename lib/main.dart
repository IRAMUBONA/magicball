import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anyithing'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball(),
      ),
    ),
  );
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int rightBallNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightBallNumber = Random().nextInt(5) + 1;
                });

                print('left button got pressed');
              },
              child: Image.asset('images/ball$rightBallNumber.png'),
            ),

          ),
        ],
      ),
    );

  }


}




