import 'package:flutter/material.dart';

// 2.2 & 2.5 & 2.7
class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false; // 4.4

  /* obsolete with 4.10(d)
  // 4.9
  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }
   */

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null), // 4.8
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked, // 4.7
        //toggleCheckboxState: checkboxCallback,  // 4.10 (c), obsolete with 4.10(d)
        // 4.10(d)
        toggleCheckboxState: (bool checkboxState) {
          setState(() {
            isChecked = checkboxState;
          });
        },
      ),
    );
  }
}

//4.2 & 4.5
class TaskCheckbox extends StatelessWidget {
  // 4.6 & 4.10(a) only constr
  final bool checkboxState;
  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  // 4.10(a)
  final Function toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState, // <-- this is the STATE! of the Checkbox() & 4.3
      onChanged: toggleCheckboxState, // 4.10(b)
    );
  }
}
