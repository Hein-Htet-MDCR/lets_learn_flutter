import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:lets_learn_flutter/week2/lecture7/InteractiveElements.dart';
import 'package:lets_learn_flutter/week3/lecture10/home_screen.dart';
import 'package:lets_learn_flutter/week3/lecture11/test_darkmode.dart';
import 'package:lets_learn_flutter/week3/lecture11/test_font.dart';
import 'package:lets_learn_flutter/week3/lecture11/test_image_asset.dart';
import 'package:lets_learn_flutter/week3/lecture12/layout_overflow_error.dart';
import 'package:lets_learn_flutter/week3/lecture12/unbound_height_error.dart';
import 'package:lets_learn_flutter/week3/lecture9/test_stateful_widget.dart';
import 'package:lets_learn_flutter/week3/lecture9/test_stateless_widget.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: TestUboundHeightErrorFix())));
}

// 1. Move @Preview() to a top-level function outside the class
@Preview()
Widget layoutSystemPreview() {
  return const OutlinedButtonTest();
}
