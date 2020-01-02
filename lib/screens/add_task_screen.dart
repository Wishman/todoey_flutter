import 'package:flutter/material.dart';

//3.4
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // 3.6
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0), //3.10
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        // 3.8
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // 3.9
          children: <Widget>[
            // 3.8(a)
            Text(
              'Add Task', // this has to go first!!
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            // 3.8(b)
            TextField(
              autofocus: true, // focus field and show keyboard
              textAlign: TextAlign.center,
            ),
            // 3.8(c)
            FlatButton(
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              splashColor: Colors.blue,
              onPressed: () {}, // need onPressed for color to show!!!
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
