import 'package:flutter/material.dart';

// 2.2 & 2.5 & 2.7 & 5.7
class TaskTile extends StatelessWidget {
  final bool isChecked; // 4.4 & 5.8 & 5.11
  final String taskTitle; // 5.11
  final Function checkboxCallback; // 5.14(b)

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback}); // 5.12 & 5.14(b)

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
        taskTitle, // 5.11
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null), // 4.8
      ),
      // 5.8 massive change - check with previous version!
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked, // 5.10 obsolete: 4.3
        onChanged: checkboxCallback, // 5.14(c)
        //onChanged: toggleCheckboxState, // 4.10(b)
      ),
    );
  }
}

/* OBSOLETE per 5.9
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
 */
