import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
//import 'package:todoey_flutter/models/task.dart'; // obsolete with 7.5(d)
import 'package:provider/provider.dart'; // 7.5(e)
import 'package:todoey_flutter/models/task_data.dart'; //7.5(e)

// 2.1 & 2.4 & 1.7 & 5.1 & 7.6
class TasksList extends StatelessWidget {
  /* obsolete with 7.5(d)
  final List<Task> tasks; // 6.3(a)
  TasksList(this.tasks); // 6.3(b)
   */
  /* obso per 7.6
  @override
  _TasksListState createState() => _TasksListState();
}
  class _TasksListState extends State<TasksList> {
   */

  @override
  Widget build(BuildContext context) {
    // 7.8 wrap highest point of Provider.od usage in Consumer()
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              //taskTitle: widget.tasks[index].name,  //obsolete per 7.5(f)
              //isChecked: widget.tasks[index].isDone,  // obsolete per 7.5(f)
              //taskTitle: Provider.of<TaskData>(context).tasks[index].name, // 7.5(f) obso per 7.9
              //isChecked: Provider.of<TaskData>(context).tasks[index].isDone, // 7.5(f), obso per 7.9
              taskTitle: taskData.tasks[index].name, // 7.9
              isChecked: taskData.tasks[index].isDone, //7.9
              // 5.14(a):
              checkboxCallback: (checkboxState) {
                //setState(() {
                //widget.tasks[index].toggleDone(); // obso per 7.5(f)
                //});
              },
            );
          },
          //itemCount: widget.tasks.length);  // obso per 7.5(f)
          //itemCount: Provider.of<TaskData>(context).tasks.length, // obso per 7.9
          //itemCount: taskData.tasks.length, // 7.9 obso per 7.10(c)
          itemCount: taskData.taskCount, // 7.10(c)
        );
      },
      // 5.13 dynamically build ist with ListView.builder
    ); // 7.5(f),
    /* 
    return ListView(
      children: <Widget>[
        // 2.2 & 2.5 & 5.13
        TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
        TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
        TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
      ],
    );
     */
  }
}
