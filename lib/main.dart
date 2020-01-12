import 'package:flutter/material.dart';
import 'screens/task_screen.dart'; // 1.6
import 'package:provider/provider.dart'; // 7.4
import 'models/task_data.dart'; // 7.4(b)

void main() => runApp(MyApp());

// 1.2
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 7.4(a)
    return ChangeNotifierProvider(
      create: (context) => TaskData(), // 7.4(b)
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
