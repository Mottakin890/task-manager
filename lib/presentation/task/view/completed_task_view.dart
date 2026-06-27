import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/my_app_bar.dart';
import 'package:task_manager/domain/models/task_model.dart';
import 'package:task_manager/presentation/task/widgets/task_card.dart';

class CompletedTaskView extends StatelessWidget {
  const CompletedTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (index, context) {
          return TaskCard(
            taskModel: TaskModel(
              title: 'Demo',
              description: 'Demo task descriptions',
              status: "Completed",
              email: "mottakinulalam@gmail.com",
              createdDate: '10 Aug 2026',
            ),
            chipColor: Colors.green,
            refreshOnClick: () {},
          );
        },
      ),
    );
  }
}
