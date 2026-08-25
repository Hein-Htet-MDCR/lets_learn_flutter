import 'package:flutter/material.dart';

class ElevatedButtonTest extends StatelessWidget {
  const ElevatedButtonTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ElevatedButton(
          onPressed: () {
            print("Elevated Button clicked");
          },
          child: Text("Click Me"),
        ),
      ),
    );
  }
}

class OutlinedButtonTest extends StatelessWidget {
  const OutlinedButtonTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: OutlinedButton(
          onPressed: () {
            print("Button clicked");
          },
          child: Text("Click Me"),
        ),
      ),
    );
  }
}
