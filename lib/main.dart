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
    return Center(
      child: Row(
          children: [
            SizedBox(
              height: 30,
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice2.png'),
            ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('images/dice6.png'),
            )),
            SizedBox(
              height: 30,
            ),
          ],
      ),
    );
  }
}
