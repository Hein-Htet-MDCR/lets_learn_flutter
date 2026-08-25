import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class WorkingWithIcon extends StatelessWidget {
  @Preview()
  const WorkingWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:  Icon(
          Icons.school,
          color: Colors.blueAccent,
          size: 50,
          semanticLabel: 'Home',
        ),
      ),
    );
  }
}
