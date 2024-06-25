// lib/todo_provider.dart
import 'package:flutter/material.dart';
import 'todo.dart';

class TodoProvider with ChangeNotifier {
  List<Todo> _todos = [];
  List<String> _categories = ['Work', 'Personal', 'Shopping'];

  List<Todo> get todos => _todos;
  List<String> get categories => _categories;

  void addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  void toggleTodoStatus(Todo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();
  }

  void removeTodo(Todo todo) {
    _todos.remove(todo);
    notifyListeners();
  }

  void addCategory(String category) {
    _categories.add(category);
    notifyListeners();
  }
}
