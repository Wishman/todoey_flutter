import 'package:flutter/foundation.dart'; // 7.3
import 'package:todoey_flutter/models/task.dart'; // 7.3(a)

class TaskData extends ChangeNotifier {
  // 5.2 & 6.1 & 7.3(b)
  List<Task> tasks = [
    // 5.6 temp:
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  // 7.10(a)
  int get taskCount {
    return tasks.length;
  }
}
