import 'package:flutter/material.dart';
import 'package:resilientclassroom/misc/constants.dart';

class StudentContainer extends StatefulWidget {
  static const String id = 'student_container';
  static const bool admin = false;
  @override
  _StudentContainerState createState() => _StudentContainerState();
}

class _StudentContainerState extends State<StudentContainer> {
  int count = 0;
  List<String> teachers = <String>[];
  List<String> subject = <String>[];
  Future<void> _askedToLead() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text(
              'Add a new classroom',
              style: TextStyle(fontSize: 20),
            ),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  // Navigator.pop(context);
                },
                child: Column(
                  children: <Widget>[
                    Text(
                      'Subject',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextField(
                      onChanged: (text) {
                        subject.add(text);
                      },
                    ),
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  //Navigator.pop(context);
                },
                child: Column(
                  children: <Widget>[
                    Text(
                      'Teacher',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextField(
                      onChanged: (text) {
                        teachers.add(text);
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        })) {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resilient Classroom'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            tooltip: 'Add classroom',
            onPressed: () {
              _askedToLead();
              setState(() {
                count += 1;
              });
            },
          ),
        ],
      ),
      body: Scrollbar(
        child: ListView.separated(
          padding: EdgeInsets.all(20),
          itemCount: count,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 200,
              color: Colors.brown[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    '${teachers[index]}',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '${subject[index]}',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
