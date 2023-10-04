import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Magic8ball());
}

class Magic8ball extends StatefulWidget {
  const Magic8ball({super.key});

  @override
  State<Magic8ball> createState() => _Magic8ballState();
}

class _Magic8ballState extends State<Magic8ball> {

  var answernumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Ask Me Anything"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Center(child: TextButton(onPressed: (){
          setState(() {
            answernumber = Random().nextInt(5) + 1;
          });
        },child: Image.asset("assets/ball$answernumber.png"),)),
      ),
    );
  }
}
