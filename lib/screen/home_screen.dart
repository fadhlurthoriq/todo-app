import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_sqlite_app/logic/todo_bloc.dart';
import 'package:todo_sqlite_app/logic/todo_event.dart';
import '../logic/todo_state.dart';
import 'edit_screen.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Todo App')),
body: BlocBuilder<TodoBloc, TodoState>(
builder: (context, state) {
if (state is TodoLoading) {
return const Center(child: CircularProgressIndicator());
}

if (state is TodoLoaded) {
return ListView.builder(
itemCount: state.todos.length,
itemBuilder: (context, i) {
final todo = state.todos[i];
return ListTile(
title: Text(todo.title),
trailing: IconButton(
icon: const Icon(Icons.delete),
onPressed: () => context.read<TodoBloc>().add(DeleteTodo(todo.id!)),
),
onTap: () => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => BlocProvider.value(
      value: context.read<TodoBloc>(),
      child: EditScreen(todo: todo),
    ),
  ),
),
);
},
);
}

return const SizedBox();
},
),
floatingActionButton: FloatingActionButton(
child: const Icon(Icons.add),
onPressed: () => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (_) => BlocProvider.value(
      value: context.read<TodoBloc>(),
      child: const EditScreen(),
    ),
  ),
),
),
);
}
}