import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Magic 8 Ball'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Magic8Ball(),
      ),
    ),
  );
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({Key? key}) : super(key: key);

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int numBallChanged = 1;

  void changeBallFace() {
    setState(() {
      numBallChanged = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextButton(
          onPressed: () {
            changeBallFace();
          },
          child: Image.asset('images/ball$numBallChanged.png'),
        ),
      ),
    );
  }
}
