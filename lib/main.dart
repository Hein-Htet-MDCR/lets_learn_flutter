import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:lets_learn_flutter/lecture7/GestureDetector.dart';
import 'package:lets_learn_flutter/lecture7/InteractiveElements.dart';
import 'package:lets_learn_flutter/lecture8/ScrollableList.dart';
import 'package:lets_learn_flutter/lecture7/TextField.dart';

void main() {
  runApp(ProductGridTest());
}

// 1. Move @Preview() to a top-level function outside the class
@Preview()
Widget layoutSystemPreview() {
  return const OutlinedButtonTest();
}
