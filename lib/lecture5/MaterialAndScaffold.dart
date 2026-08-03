import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class MaterialAndScaffold extends StatelessWidget {
  @Preview()
  const MaterialAndScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
          centerTitle: true,
        ),
        body: const Center(child: Text('Yay IT World!')),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
