import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/db.dart';
import '../data/todo_model.dart';
import 'todo_event.dart';
import 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
TodoBloc() : super(TodoInitial()) {
on<LoadTodos>((event, emit) async {
emit(TodoLoading());
final raw = await DBHelper.instance.getTodos();
emit(TodoLoaded(raw.map((e) => TodoModel.fromMap(e)).toList()));
});

on<AddTodo>((event, emit) async {
await DBHelper.instance.addTodo(event.title);
add(LoadTodos());
});

on<UpdateTodo>((event, emit) async {
await DBHelper.instance.updateTodo(event.id, event.title);
add(LoadTodos());
});

on<DeleteTodo>((event, emit) async {
await DBHelper.instance.deleteTodo(event.id);
add(LoadTodos());
});
}
}