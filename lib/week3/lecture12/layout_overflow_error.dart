import 'package:flutter/material.dart';

class TestOverFlowError extends StatelessWidget {
  const TestOverFlowError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Item 1"),
          Text("Item 2"),
          Text("Item 3"),
          Text("Item 4"),
          Text("Item 5"),
          Text("Item 6"),
          Text("Item 7"),
          Text("Item 8"),
          Text("Item 9"),
          Text("Item 10"),
          Text("Item 11"),
          Text("Item 12"),
          Text("Item 13"),
          Text("Item 14"),
          Text("Item 15"),
          Text("Item 16"),
          Text("Item 17"),
          Text("Item 18"),
          Text("Item 19"),
          Text("Item 20"),
        ],
      ),
    );
  }
}

class TestOverFlowErrorFix extends StatelessWidget {
  const TestOverFlowErrorFix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Item 1"),
            Text("Item 2"),
            Text("Item 3"),
            Text("Item 4"),
            Text("Item 5"),
            Text("Item 6"),
            Text("Item 7"),
            Text("Item 8"),
            Text("Item 9"),
            Text("Item 10"),
            Text("Item 11"),
            Text("Item 12"),
            Text("Item 13"),
            Text("Item 14"),
            Text("Item 15"),
            Text("Item 16"),
            Text("Item 17"),
            Text("Item 18"),
            Text("Item 19"),
            Text("Item 20"),
          ],
        ),
      ),
    );
  }
}
