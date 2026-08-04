import 'package:flutter/material.dart';

class TextFieldTest extends StatelessWidget {
  const TextFieldTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TextField(
          decoration: InputDecoration(
            labelText: "Enter Name",

            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class TextEditingControllerTest extends StatefulWidget {
  const TextEditingControllerTest({super.key}); // const is allowed here now!

  @override
  State<TextEditingControllerTest> createState() =>
      _TextEditingControllerTestState();
}

class _TextEditingControllerTestState extends State<TextEditingControllerTest> {
  // 1. Initialize the controller inside the State class
  late final TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    // 2. Crucial: Clean up the controller when the widget is removed
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            TextField(controller: nameController),
            ElevatedButton(
              onPressed: () {
                print(nameController.text);
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
