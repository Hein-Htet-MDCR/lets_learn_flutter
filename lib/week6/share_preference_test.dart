import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MaterialApp(home: SharePreferenceTest()));

class SharePreferenceTest extends StatefulWidget {
  const SharePreferenceTest({super.key});

  @override
  State<SharePreferenceTest> createState() => _SharePreferenceTestState();
}

class _SharePreferenceTestState extends State<SharePreferenceTest> {
  bool _isDark = false;

  @override
  void initState() {
    super.initState();
    _initTheme();
  }

  // 3. Separate async function to load data and safely trigger UI update
  Future<void> _initTheme() async {
    final savedThemeSetting = await loadTheme();
    setState(() {
      _isDark = savedThemeSetting;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                "Hello Flutter",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Switch(
                value: _isDark,
                onChanged: (value) async {
                  setState(() {
                    _isDark = value;
                  });

                  await saveTheme(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> saveTheme(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('isDarkMode', isDark);
  }

  Future<bool> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool('isDarkMode') ?? false;
  }
}
