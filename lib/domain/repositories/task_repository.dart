import 'package:task_manager/domain/models/task_model.dart';

abstract class TaskRepository {
  Future<dynamic> getDB();
  Future<List<TaskModel>> getTasks();
  Future<void> insertTask(TaskModel task);
  Future<void> updateTask(TaskModel task);
  Future<void> deleteTask(int id);
}
