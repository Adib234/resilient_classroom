import 'package:flutter/material.dart';
import 'package:resilientclassroom/screens/welcome_screen.dart';

void main() => runApp(Classroom());

class Classroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
