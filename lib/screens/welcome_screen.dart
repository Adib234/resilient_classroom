import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  //static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/learning.jpg"),
            fit: BoxFit.cover,
          ),
        ),
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
                      fontSize: 40.0,
                      fontFamily: "Oxygen",
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                    alignment:
                        AlignmentDirectional.topStart // or Alignment.topLeft
                    ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    elevation: 5.0,
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        //Go to login screen.
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
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30.0),
                    elevation: 5.0,
                    child: MaterialButton(
                      onPressed: () {
                        //Go to registration screen.
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
