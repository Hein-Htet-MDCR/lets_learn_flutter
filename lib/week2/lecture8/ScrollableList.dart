import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget {
  const ListViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: const [
            ListTile(title: Text("Apple")),

            ListTile(title: Text("Banana")),

            ListTile(title: Text("Orange")),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("John"),
              subtitle: Text("Developer"),
            ),
          ],
        ),
      ),
    );
  }
}

class ListBuilderTest extends StatelessWidget {
  const ListBuilderTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) => ListTile(title: Text("Item $index")),
        ),
      ),
    );
  }
}

class GridViewTest extends StatelessWidget {
  const GridViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Container(color: Colors.red),

            Container(color: Colors.blue),

            Container(color: Colors.green),

            Container(color: Colors.orange),

            Container(color: Colors.pink),

            Container(color: Colors.black),

            Container(color: Colors.yellow),

            Container(color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class ProductGridTest extends StatelessWidget {
  const ProductGridTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,

          crossAxisSpacing: 10,

          mainAxisSpacing: 10,

          children: [
            Card(child: Center(child: Text("Product 1"))),

            Card(child: Center(child: Text("Product 2"))),

            Card(child: Center(child: Text("Product 3"))),

            Card(child: Center(child: Text("Product 4"))),
          ],
        ),
      ),
    );
  }
}
