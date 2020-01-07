import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

// 2.1 & 2.4 & 1.7 & 5.1
class TasksList extends StatefulWidget {
  //
  final List<Task> tasks; // 6.3(a)

  TasksList(this.tasks); // 6.3(b)

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    // 5.13 dynamically build ist with ListView.builder
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            // 5.14(a):
            checkboxCallback: (checkboxState) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        },
        itemCount: widget.tasks.length);
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
