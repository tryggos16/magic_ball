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
        backgroundColor: Colors.purple,
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
      child: Row(
        children: <Widget> [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('i got clicked');
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                  print('image number $ballNumber was picked');
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
