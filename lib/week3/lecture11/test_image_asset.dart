import 'package:flutter/material.dart';

class TestImageAsset extends StatelessWidget {
  const TestImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/dog.jpg");
  }
}
