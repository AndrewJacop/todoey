import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final ValueChanged<bool?> toggleCheckBoxState;
  final Function() longPressCallback;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.toggleCheckBoxState,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 50),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckBoxState,
      ),
      onLongPress: longPressCallback,
    );
  }
}
