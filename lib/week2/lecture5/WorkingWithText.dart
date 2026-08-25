import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class WorkingWithText extends StatelessWidget {
  @Preview()
  const WorkingWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: const Text(
          'Yay IT World!',
          style: TextStyle(
            fontFamily: 'Times New Roman',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
