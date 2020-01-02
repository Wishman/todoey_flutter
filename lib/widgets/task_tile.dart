import 'package:flutter/material.dart';

// 2.2 & 2.5 & 2.7
class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task'),
      trailing: Checkbox(value: false),
    );
  }
}
