import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class ColumnTest extends StatelessWidget {
  const ColumnTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(children: [Text("One"), Text("Two"), Text("Three")]),
        ),
      ),
    );
  }
}

class ColumnAlignmentTest extends StatelessWidget {
  const ColumnAlignmentTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text("One"), Text("Two"), Text("Three")],
          ),
        ),
      ),
    );
  }
}

class RowTest extends StatelessWidget {
  const RowTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(children: [Text("One"), Text("Two"), Text("Three")]),
        ),
      ),
    );
  }
}

class StackTest extends StatelessWidget {
  const StackTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(children: [Text("One"), Text("Two"), Text("Three")]),
        ),
      ),
    );
  }
}

class SizedBoxTest extends StatelessWidget {
  const SizedBoxTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("Name"),
              ColoredBox(
                color: Colors.red,
                child: SizedBox(width: 100, height: 20),
              ),
              Text("Age"),
            ],
          ),
        ),
      ),
    );
  }
}

class PaddingTest extends StatelessWidget {
  const PaddingTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              ColoredBox(
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text("Hello"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerTest extends StatelessWidget {
  const ContainerTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(width: 150, height: 150, color: Colors.blue),
      ),
    );
  }
}

class StyledContainerTest extends StatelessWidget {
  const StyledContainerTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(16),

          decoration: BoxDecoration(
            color: Colors.orange,

            borderRadius: BorderRadius.circular(15),
          ),

          child: Text("Student Card"),
        ),
      ),
    );
  }
}


