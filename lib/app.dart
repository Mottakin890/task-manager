import 'package:flutter/material.dart';
import 'package:task_manager/UI/screens/task_home_view.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskHomeView(),
    );
  }
}
