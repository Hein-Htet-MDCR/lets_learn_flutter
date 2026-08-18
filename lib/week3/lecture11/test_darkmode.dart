import 'package:flutter/material.dart';

class TestDarkMode extends StatefulWidget {
  const TestDarkMode({super.key});

  @override
  State<TestDarkMode> createState() => _TestDarkModeState();
}

class _TestDarkModeState extends State<TestDarkMode> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                "Hello Flutter",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Switch(
                value: isDark,
                onChanged: (value) {
                  setState(() {
                    isDark = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
