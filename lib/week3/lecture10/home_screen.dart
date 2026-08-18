import 'package:flutter/material.dart';
import 'package:lets_learn_flutter/week3/lecture10/profile_screen.dart';
import 'package:lets_learn_flutter/week3/lecture10/second_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("This is Home Screen!"),
        ElevatedButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            ),
          },
          child: Text("Go to the second screeen"),
        ),

        ElevatedButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(username: "Hein Htet"),
              ),
            ),
          },
          child: Text("Go to the profile screeen"),
        ),
      ],
    );
  }
}
