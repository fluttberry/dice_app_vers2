import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pinkAccent,
        title: const Center(
          child: Text(
            'ТАПШЫРМА - 05',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  debugPrint('left dice clicked');
                  changeDiceFunction(); //Repeated
                  // final Random rand = Random();

                  // setState(() {
                  //   leftDice = rand.nextInt(6) + 1;
                  //   rightDice = rand.nextInt(6) + 1;
                  // });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/Dice$leftDice.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  debugPrint('right dice clicked');
                  changeDiceFunction(); //repeated

                  // final Random rand = Random();
                  // setState(() {
                  //   rightDice = rand.nextInt(6) + 1;
                  //   leftDice = rand.nextInt(6) + 1;
                  // });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/Dice$rightDice.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changeDiceFunction() {
    final Random rand = Random();
    setState(() {
      rightDice = rand.nextInt(6) + 1;
      leftDice = rand.nextInt(6) + 1;
    });
  }
}
