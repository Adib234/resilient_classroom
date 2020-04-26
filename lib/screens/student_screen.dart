import 'package:flutter/material.dart';
import 'package:resilientclassroom/screens/login_screen.dart';
import 'package:resilientclassroom/screens/registration_screen.dart';
import 'package:resilientclassroom/misc/constants.dart';

class StudentScreen extends StatefulWidget {
  static const String id = 'student_screen';

  @override
  _StudentScreenState createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: Constants.image,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 150),
                child: Constants.eventsButton(context),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(32.0),
                child: Text(
                  'Welcome, Student',
                  style: TextStyle(
                    fontSize: 60,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.brown[300],
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  elevation: 10,
                  hoverElevation: 30,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      LoginScreen.id,
                    );
                  },
                  minWidth: 300.0,
                  height: 64.0,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.brown[600],
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  elevation: 10,
                  hoverElevation: 30,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RegistrationScreen.id,
                    );
                  },
                  minWidth: 300.0,
                  height: 64.0,
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
