import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: FutureBuilderExample()));

class FutureBuilderExample extends StatelessWidget {
  const FutureBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FutureBuilder Example")),
      body: Center(
        // 3. Use the FutureBuilder
        child: FutureBuilder<String>(
          future: fetchData(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            // State 1: Still waiting
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            // State 2: Error occurred
            else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            // State 3: Data received successfully
            else if (snapshot.hasData) {
              return Text(snapshot.data!, style: const TextStyle(fontSize: 20));
            }
            // Default state
            else {
              return const Text("No data");
            }
          },
        ),
      ),
    );
  }

  // A function simulating a network request
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return "Hello! Data has arrived from the server.";
  }
}
