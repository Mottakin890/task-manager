import 'package:task_manager/data/datasources/local/services/local_task_data_services.dart';
import 'package:task_manager/data/entities/task_entities.dart';
import 'package:task_manager/domain/models/task_model.dart';
import 'package:task_manager/domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  final LocalDBImpl _localDBImpl;

  TaskRepositoryImpl(this._localDBImpl);

  @override
  Future<void> deleteTask(int id) async {
    await _localDBImpl.delete(id);
  }

  @override
  Future<dynamic> getDB() async {
    await _localDBImpl.getDB();
  }

  @override
  Future<List<TaskModel>> getTasks() async {
    return await _localDBImpl.getTasks();
  }

  @override
  Future<void> insertTask(TaskModel task) async {
    await _localDBImpl.insertTask(TaskEntities.fromModel(task));
  }

  @override
  Future<void> updateTask(TaskModel task) async {
    await _localDBImpl.updateTask(TaskEntities.fromModel(task));
  }
}
