import 'package:flutter/material.dart';

class GestureDetectorTest extends StatelessWidget {
  const GestureDetectorTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            print("Tapped");
          },
          onLongPress: () {
            print("Long Presed");
          },
          child: Container(width: 150, height: 150, color: Colors.blue),
        ),
      ),
    );
  }
}
