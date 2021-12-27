import 'package:flutter/material.dart';
import 'package:todoapp/widgets/tasks_tile.dart';
import "package:todoapp/models/task.dart";

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Buy Bags"),
    Task(name: "Buy Eggs"),
    Task(name: "Buy hen"),
    Task(name: "Buy app"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext context, int index) {
          return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBoxCallback: (checkBoxState) {
              setState(() {
                tasks[index].toggleDone(); //= checkBoxState ?? true;
              });
            },
          );
        });
    // ListView(
    //   children: [
    //     // TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
    //     // TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
    //     // TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
    //     // TaskTile(taskTitle: tasks[3].name, isChecked: tasks[3].isDone),
    //     // TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone),
    //     // TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //   ],
    // );
  }
}
