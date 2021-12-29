import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task.dart';
import 'package:todoapp/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // const AddTaskScreen({ Key? key }) : super(key: key);

  late String newTaskTitle;
  // late final Function addTaskCallback;
  // AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Add Task",
                    style: TextStyle(
                        color: Colors.lightBlueAccent, fontSize: 30.0),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            // border: InputBorder.none,
                            // labelText: 'Enter Task',
                            hintText: 'Enter Task'),
                        autofocus: true,
                        onChanged: (newText) {
                          newTaskTitle = newText;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                ),
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  // final task = Task(name: newTaskTitle);
                  //  addTaskCallback(newTaskTitle);
                  Navigator.pop(context);
                  // addTaskCallback(newTaskTitle);
                  // print(newTaskTitle);
                },
                child: Center(
                    child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
