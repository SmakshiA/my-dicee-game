import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        centerTitle: true,
        title: Text(
          'Dicee',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: DicePage(),
      ),
      backgroundColor: Colors.blue.shade900,
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Random random = Random();
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: IconButton(
              icon: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  leftDiceNumber = random.nextInt(6)+1;
                });
                print('Left Button pressed');
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: IconButton(
              icon: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: () {
                setState(() {
                  rightDiceNumber = random.nextInt(6)+1;
                });
                print('Right button pressed');
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}