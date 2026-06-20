import 'package:sqflite/sqflite.dart';
import 'package:task_manager/data/entities/task_entities.dart';
import 'package:path/path.dart' as p;

abstract class LocalTaskDataServices {
  Future<Database> getDB();
  Future<List<TaskEntities>> getTasks();
  Future<void> insertTask(TaskEntities task);
  Future<void> updateTask(TaskEntities task);
  Future<void> delete(int id);
}

class LocalDBImpl implements LocalTaskDataServices {
  static Database? _db;

  @override
  Future<void> delete(id) async {
    final db = await getDB();
    db.delete('tasks', where: 'id = ?', whereArgs: [id]);
  }

  @override
  Future<Database> getDB() async {
    if (_db != null) return _db!;
    _db = await openDatabase(
      p.join(await getDatabasesPath(), 'task.db'),
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE tasks(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, isDone INTEGER )',
        );
      },
      version: 2,
    );
    return _db!;
  }

  @override
  Future<List<TaskEntities>> getTasks() async {
    final db = await getDB();
    final List<Map<String, Object?>> taskMaps = await db.query('tasks');
    return taskMaps.map((map) => TaskEntities.fromJson(map)).toList();
  }

  @override
  Future<void> insertTask(TaskEntities task) async {
    final db = await getDB();
    await db.insert(
      'tasks',
      task.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  @override
  Future<void> updateTask(TaskEntities task) async {
    final db = await getDB();
    db.update('tasks', task.toJson(), where: 'id = ?', whereArgs: [task.id]);
  }
}
