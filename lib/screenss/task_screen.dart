import 'package:flutter/material.dart'; // 1.4
import 'package:todoey_flutter/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1.7:
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      // 1.17
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        // 2.8
        onPressed: () {
          // TODO: add logic to display ADD TASK Container
        },
      ),
      // 1.16(b)
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 1.16(d)
        children: <Widget>[
          // 1.8:
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // 1.12
              children: <Widget>[
                // 1.9:
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Colors.lightBlueAccent,
                    )),
                // 1.10
                SizedBox(height: 10.0),
                Text(
                  'Todoey',
                  // 1.11:
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700, // bit heavier than bold
                  ),
                ),
                // 1.13
                Text(
                  '12 tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          //1.15 & 1.16(c)
          Expanded(
            // 1.14 - Container for tasks
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0), // 2.3
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
              ),
              //2.1 & 2.4
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
