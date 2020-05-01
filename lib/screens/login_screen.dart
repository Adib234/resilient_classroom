import 'package:flutter/material.dart';
import 'package:resilientclassroom/misc/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'welcome_screen.dart';
import 'student_stream.dart';
import 'teacher_stream.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email;
  String password;
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
                'Welcome back!',
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
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (user != null) {
                        Navigator.pushNamed(
                            context,
                            WelcomeScreen.admin
                                ? TeacherContainer.id
                                : StudentContainer.id);
                      }
                    } catch (e) {
                      print(e);
                    }
                  },
                  minWidth: 300.0,
                  height: 64.0,
                  child: Text(
                    'Sign in!',
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
