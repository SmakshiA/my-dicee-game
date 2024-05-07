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


class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(child: Image(
            image: AssetImage('images/dice1.png'),
          )),
          SizedBox(
            height: 30,
          ),
          Expanded(child: Image(
            image: AssetImage('images/dice6.png'),
          )),
          SizedBox(
            height: 30,
          ),
        ],
    );
  }
}
