import 'dart:collection';
import 'package:flutter/material.dart';

// import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: "Buy Bags"),
    Task(name: "Buy Eggs"),
    Task(name: "Buy hen"),
    Task(name: "Buy app"),
  ];
//getter for task cont
  int get taskCount {
    return _tasks.length;
  }

//UnmodifiableListView to stop users from using .add() function on List
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

//add task
  addTask(String value) {
    final task = Task(name: value);
    _tasks.add(task);
    notifyListeners();
  }

//update task for instead of set state for chkbox
  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

//delete task from list
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
