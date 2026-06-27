import 'package:flutter/material.dart';
import 'package:task_manager/common/widgets/my_app_bar.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: .start,

          children: [
            SizedBox(height: 150),
            Text(
              "Add New Task",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 25),
            TextFormField(decoration: InputDecoration(hintText: 'Title')),
            SizedBox(height: 10),
            TextFormField(decoration: InputDecoration(hintText: 'Descriptions'), maxLines: 6,),
            SizedBox(height: 10),
            FilledButton(
              onPressed: () {},
              child: Icon(Icons.arrow_circle_right_outlined),
            ),
            SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
