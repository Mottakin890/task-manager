import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/my_app_bar.dart';
import 'package:task_manager/domain/models/task_model.dart';
import 'package:task_manager/presentation/task/view/add_task_view.dart';
import 'package:task_manager/presentation/task/widgets/task_card.dart';
import 'package:task_manager/presentation/task/widgets/task_status_w.dart';

class NewTaskView extends StatelessWidget {
  const NewTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: MyAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsGeometry.all(8),
            child: SizedBox(
              height: 90,
              width: double.maxFinite,
              child: ListView.separated(
                scrollDirection: .horizontal,
                itemBuilder: (index, context) {
                  return TaskStatusWidget(title: 'New', count: 9);
                },
                separatorBuilder: (index, context) {
                  return SizedBox(width: 10);
                },
                itemCount: 4,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (index, context) {
                return TaskCard(
                  taskModel: TaskModel(
                    title: 'Demo',
                    description: 'Demo task descriptions',
                    status: "New",
                    email: "mottakinulalam",
                    createdDate: '10 Aug 2026',
                  ),
                  chipColor: Colors.blue,
                  refreshOnClick: () {},
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTaskView()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
