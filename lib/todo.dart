// lib/todo.dart
class Todo {
  String title;
  DateTime dateTime;
  bool isDone;
  String category;

  Todo({
    required this.title,
    required this.dateTime,
    this.isDone = false,
    required this.category,
  });
}
