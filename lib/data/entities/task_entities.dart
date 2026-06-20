import 'package:task_manager/domain/models/task_model.dart';

class TaskEntities extends TaskModel {
  TaskEntities({super.id, required super.title, required super.isDone});

  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'isDone': isDone ? 1 : 0};
  }

  factory TaskEntities.fromJson(Map<String, Object?> json) {
    return TaskEntities(
      id: json['id'] as int?,
      title: json['title'] as String,
      isDone: (json['isDone'] as int) == 1,
    );
  }

  factory TaskEntities.fromModel(TaskModel model) {
    return TaskEntities(id: model.id, title: model.title, isDone: model.isDone);
  }
}
