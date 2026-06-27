import 'package:flutter/material.dart';
import 'package:task_manager/common/theme/app_colors.dart';

class TaskStatusWidget extends StatelessWidget {
  final String title;
  final int count;
  const TaskStatusWidget({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bgPrimary,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),

        ],
        borderRadius: .circular(10)
      ),
      height: 65,
      width: 108,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          children: [
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
