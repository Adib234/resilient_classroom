import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'student_screen.dart';
import 'teacher_screen.dart';
import 'package:resilientclassroom/misc/constants.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  static bool admin;
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: Constants.image,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20)),
                SizedBox(width: 20.0, height: 100.0),
                Text(
                  "I am",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 43.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(width: 20.0, height: 100.0),
                RotateAnimatedTextKit(
                    onTap: () {
                      print("Tap Event");
                    },
                    totalRepeatCount: 100000000000,
                    text: ["AWESOME", "OPTIMISTIC", "RESILIENT"],
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontFamily: "Oxygen",
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart),
              ],
            ),
            Column(
              children: <Widget>[
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
                        Navigator.pushNamed(context, StudentScreen.id);
                        WelcomeScreen.admin = false;
                      },
                      minWidth: 300.0,
                      height: 64.0,
                      child: Text(
                        'I am a Student',
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
                        Navigator.pushNamed(context, TeacherScreen.id);
                        WelcomeScreen.admin = true;
                      },
                      minWidth: 300.0,
                      height: 64.0,
                      child: Text(
                        'I am a Teacher',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
