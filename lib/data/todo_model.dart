class TodoModel {
final int? id;
final String title;

TodoModel({this.id, required this.title});

factory TodoModel.fromMap(Map<String, dynamic> json) {
return TodoModel(id: json['id'], title: json['title']);
}
}