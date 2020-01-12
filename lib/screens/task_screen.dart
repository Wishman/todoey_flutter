import 'package:flutter/material.dart'; // 1.4
import 'package:todoey_flutter/widgets/tasks_list.dart';
import 'package:todoey_flutter/screens/add_task_screen.dart';
//import 'package:todoey_flutter/models/task.dart'; // obso per 7.7
import 'package:provider/provider.dart'; //7.5(a)
import 'package:todoey_flutter/models/task_data.dart'; //7.5(a)

// 6.2 & 7.7
class TasksScreen extends StatelessWidget {
  /* obsolete per 7.7 - convert to stateLESS
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
*/

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
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen((newTaskTitle) {
                    // 7.5(c)
//                    setState(() {
//                      tasks.add(Task(name: newTaskTitle)); //6.5(c)
//                    });
                    Navigator.pop(context); // 6.6
                  })); // 3.2, 3.3, 3.5 , 3.7
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
                  //'${tasks.length} Tasks', // 6.7 obsolete with 7.5(b)
                  //'${Provider.of<TaskData>(context).tasks.length} Tasks', // 7.5(b) obso per 7.10(b)
                  '${Provider.of<TaskData>(context).taskCount} Tasks', //7.10(b) using getter
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
              //2.1 & 2.4 & 6.3(d9 - obsolete with 7.5(d)
              //child: TasksList(tasks), // 6.3(d)
              child: TasksList(), // 7.5(g)
            ),
          ),
        ],
      ),
    );
  }
}
