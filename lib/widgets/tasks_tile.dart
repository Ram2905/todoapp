import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final void Function()? longPressCallback;
  bool isChecked = false;
  final String taskTitle;
  final void Function(bool?)? checkBoxCallback;
  // void Function(bool?) checkBoxCallBack(bool checkboxState) {
  //   try {
  //     setState(() {
  //       isChecked = checkboxState;
  //     });
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallback,
      required this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return //Text("data");
        ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,

        onChanged: checkBoxCallback, //toggleCheckBoxState
      ),
    );
  }
}
/*
(bool? checkBoxState) {
          setState(() {
            isChecked = checkBoxState ?? true;
          });
        },

*/

/*class TaskCheckbox extends StatelessWidget {
  late final bool checkboxState;
  late final void Function(bool?) toggleCheckBoxState;

  TaskCheckbox(
      {required this.checkboxState, required this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return 
  }
}*/
