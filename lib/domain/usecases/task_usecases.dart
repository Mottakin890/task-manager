import 'package:task_manager/domain/models/task_model.dart';
import 'package:task_manager/domain/repositories/task_repository.dart';

class GetDB {
  final TaskRepository _taskRepository;

  GetDB(this._taskRepository);

  Future<dynamic> call() async {
    await _taskRepository.getDB();
  }
}

class GetTask {
  final TaskRepository _taskRepository;

  GetTask(this._taskRepository);

  Future<List<TaskModel>> call() async {
    return await _taskRepository.getTasks();
  }
}

class InsertTask {
  final TaskRepository _taskRepository;
  final TaskModel _taskModel;

  InsertTask(this._taskRepository, this._taskModel);

  Future<void> call() async {
    return await _taskRepository.insertTask(_taskModel);
  }
}

class UpdateTask {
  final TaskRepository _taskRepository;
  final TaskModel _taskModel;

  UpdateTask(this._taskRepository, this._taskModel);

  Future<void> call() async {
    return await _taskRepository.updateTask(_taskModel);
  }
}

class DeleteTask {
  final TaskRepository _taskRepository;
  final TaskModel _taskModel;

  DeleteTask(this._taskRepository, this._taskModel);

  Future<void> call() async {
    return await _taskRepository.deleteTask(_taskModel.id!);
  }
}
