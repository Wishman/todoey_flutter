import 'package:flutter/foundation.dart'; // 7.3
import 'package:todoey_flutter/models/task.dart'; // 7.3(a)
import 'dart:collection'; //8.7

class TaskData extends ChangeNotifier {
  // 5.2 & 6.1 & 7.3(b) & 8.6
  List<Task> _tasks = [
    // 5.6 temp:
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  // 8.6 7 8.7 prevents direct access to _tasks
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  // 7.10(a)
  int get taskCount {
    return _tasks.length;
  }

  // 8.4 update func goes here!
  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners(); // <- must be called here !
  }
}
