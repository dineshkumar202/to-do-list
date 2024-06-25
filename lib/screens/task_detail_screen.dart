// lib/screens/task_detail_screen.dart
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../todo.dart';

class TaskDetailScreen extends StatelessWidget {
  final Todo todo;

  TaskDetailScreen({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category: ${todo.category}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Due: ${DateFormat('yyyy-MM-dd – kk:mm').format(todo.dateTime)}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Status: ${todo.isDone ? "Completed" : "Incomplete"}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
