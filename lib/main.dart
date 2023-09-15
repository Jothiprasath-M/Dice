import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var ld = 6;
  var rd = 6;

  void uruttu() {
    setState(() {
      ld = Random().nextInt(6) + 1;
      rd = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                uruttu();
              },
              child: Image.asset('images/dice$ld.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                uruttu();
              },
              child: Image.asset('images/dice$rd.png'),
            ),
          ),
        ],
      ),
    );
  }
}
