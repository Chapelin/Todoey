import 'package:flutter/material.dart';

import '../constants.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallbak;

  AddTaskScreen(this.addTaskCallbak);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: kBoxDecorationRoundTop,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 15, right: kDefaultPadding, left: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              TextField(
                onChanged: (value) {
                  newTaskTitle = value;
                },
                autofocus: true,
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                color: Colors.lightBlueAccent,
                textColor: Colors.white,
                child: Text('Add'),
                onPressed: () {
                  addTaskCallbak(newTaskTitle);
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
