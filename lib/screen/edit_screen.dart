import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/todo_bloc.dart';
import '../logic/todo_event.dart';
import '../data/todo_model.dart';

class EditScreen extends StatefulWidget {
final TodoModel? todo;
const EditScreen({super.key, this.todo});

@override
State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
final TextEditingController controller = TextEditingController();

@override
void initState() {
super.initState();
if (widget.todo != null) controller.text = widget.todo!.title;
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text(widget.todo == null ? 'Add Todo' : 'Edit Todo')),
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
TextField(
controller: controller,
decoration: const InputDecoration(labelText: 'Title'),
),
const SizedBox(height: 20),
ElevatedButton(
onPressed: () {
final text = controller.text.trim();
if (text.isEmpty) return;

if (widget.todo == null) {
context.read<TodoBloc>().add(AddTodo(text));
} else {
context.read<TodoBloc>().add(UpdateTodo(widget.todo!.id!, text));
}

Navigator.pop(context);
},
child: const Text('Save'),
)
],
),
),
);
}
}