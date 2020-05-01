import 'package:flutter/material.dart';
import 'package:resilientclassroom/screens/welcome_screen.dart';
import 'package:resilientclassroom/screens/teacher_screen.dart';
import 'package:resilientclassroom/screens/student_screen.dart';
import 'package:resilientclassroom/screens/login_screen.dart';
import 'package:resilientclassroom/screens/registration_screen.dart';
import 'package:resilientclassroom/screens/student_stream.dart';
import 'package:resilientclassroom/screens/teacher_stream.dart';

void main() => runApp(Classroom());

class Classroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: WelcomeScreen.id, routes: {
      WelcomeScreen.id: (context) => WelcomeScreen(),
      TeacherScreen.id: (context) => TeacherScreen(),
      StudentScreen.id: (context) => StudentScreen(),
      LoginScreen.id: (context) => LoginScreen(),
      RegistrationScreen.id: (context) => RegistrationScreen(),
      StudentContainer.id: (context) => StudentContainer(),
      TeacherContainer.id: (context) => TeacherContainer(),
    });
  }
}
