import 'package:flutter/material.dart';
import 'package:resilientclassroom/misc/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'welcome_screen.dart';
import 'student_stream.dart';
import 'teacher_stream.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String password;
  String email;
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: Constants.image,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(bottom: 150),
                child: Constants.eventsButton(context),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Welcome new user!',
                style: TextStyle(
                  fontSize: 60,
                ),
              ),
            ),
            Flexible(
              child: Row(
                children: <Widget>[
                  Icon(Icons.email, size: 60),
                  Container(
                    width: 300,
                    child: TextField(
                      style: TextStyle(fontSize: 40),
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: <Widget>[
                  Icon(Icons.lock, size: 60),
                  Container(
                    width: 300,
                    child: TextField(
                      style: TextStyle(fontSize: 40),
                      onChanged: (text) {
                        password = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Flexible(
              child: Material(
                elevation: 5.0,
                color: Colors.brown[300],
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  elevation: 10,
                  hoverElevation: 30,
                  onPressed: () async {
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newUser != null) {
                        Navigator.pushNamed(
                            context,
                            WelcomeScreen.admin
                                ? TeacherStream.id
                                : StudentStream.id);
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  minWidth: 300.0,
                  height: 64.0,
                  child: Text(
                    'Sign me up!',
                    style: TextStyle(
                      fontSize: 40,
                    ),
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
