import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

// 2.1 & 2.4 & 1.7
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // 2.2 & 2.5
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
