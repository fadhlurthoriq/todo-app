import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
static final DBHelper instance = DBHelper._init();
static Database? _database;

DBHelper._init();

Future<Database> get database async {
if (_database != null) return _database!;
_database = await _initDB('todo.db');
return _database!;
}

Future<Database> _initDB(String filePath) async {
final dbPath = await getDatabasesPath();
final path = join(dbPath, filePath);

return await openDatabase(path, version: 1, onCreate: _createDB);
}

Future _createDB(Database db, int version) async {
await db.execute('''
CREATE TABLE todos(
id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT NOT NULL
)
''');
}

Future<List<Map<String, dynamic>>> getTodos() async {
final db = await instance.database;
return await db.query('todos');
}

Future<int> addTodo(String title) async {
final db = await instance.database;
return db.insert('todos', {'title': title});
}

Future<int> updateTodo(int id, String title) async {
final db = await instance.database;
return db.update('todos', {'title': title}, where: 'id = ?', whereArgs: [id]);
}

Future<int> deleteTodo(int id) async {
final db = await instance.database;
return db.delete('todos', where: 'id = ?', whereArgs: [id]);
}
}