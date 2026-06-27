import 'package:flutter/material.dart';
import 'package:task_manager/presentation/task/view/cancel_task_view.dart';
import 'package:task_manager/presentation/task/view/completed_task_view.dart';
import 'package:task_manager/presentation/task/view/new_task_view.dart';
import 'package:task_manager/presentation/task/view/progress_task_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedIndex = 0;
  final List _screens = [
    NewTaskView(),
    ProgressTaskView(),
    CompletedTaskView(),
    CancelTaskView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.task), label: "New Task"),
          NavigationDestination(icon: Icon(Icons.refresh), label: "Progress"),
          NavigationDestination(icon: Icon(Icons.done_all), label: "Completed"),
          NavigationDestination(icon: Icon(Icons.cancel), label: "Cancel"),
        ],
      ),
    );
  }
}
