import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp( const
  MaterialApp(
    home: BallPage(),
  ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        elevation: 70.0,
        shadowColor: Colors.grey,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40.0,
          letterSpacing: 5.0,
          color: Colors.blue,
        ),
        backgroundColor: Colors.blueGrey[900],
        title: const Center(
          child: Text('Ask me anything'),
        ),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}


class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          print('i got clicked');
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print('image number $ballNumber was picked');
          });
        },
        child: MaterialApp(
          home: Image.asset('images/ball$ballNumber.png'),

        ),
      ),
    );
  }
}
