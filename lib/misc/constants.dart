import 'package:flutter/material.dart';

class Constants {
  static BoxDecoration image = BoxDecoration(
    image: DecorationImage(
      image: AssetImage("images/learning.jpg"),
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.hue),
    ),
  );
  static Widget eventsButton(BuildContext context) {
    return Row(
      children: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 40,
          ),
        ),
      ],
    );
  }
}
