import 'package:flutter/material.dart';

class TestUboundHeightError extends StatelessWidget {
  const TestUboundHeightError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Students"),
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(title: Text("Student $index"));
            },
          ),
        ],
      ),
    );
  }
}

class TestUboundHeightErrorFix extends StatelessWidget {
  const TestUboundHeightErrorFix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Students"),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(title: Text("Student $index"));
              },
            ),
          ),
        ],
      ),
    );
  }
}
