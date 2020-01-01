import 'package:flutter/material.dart';
import 'screenss/task_screen.dart'; // 1.6

void main() => runApp(MyApp());

// 1.2
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}
