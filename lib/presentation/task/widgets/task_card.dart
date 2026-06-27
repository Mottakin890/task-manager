import 'package:flutter/material.dart';
import 'package:task_manager/common/theme/app_colors.dart';
import 'package:task_manager/domain/models/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskModel taskModel;
  final Color chipColor;
  final VoidCallback refreshOnClick;
  const TaskCard({super.key, required this.taskModel, required this.chipColor, required this.refreshOnClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.bgPrimary,
      child: ListTile(
        title: Text(
          taskModel.title!,
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontWeight: .bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(taskModel.description!),
            Text(taskModel.createdDate!),
            Row(
              children: [
                Chip(
                  shape: RoundedRectangleBorder(borderRadius: .circular(25)),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(taskModel.status!, style: TextStyle(color: Colors.white)),
                  ),
                  backgroundColor: chipColor,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit_document, color: Colors.blue),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
