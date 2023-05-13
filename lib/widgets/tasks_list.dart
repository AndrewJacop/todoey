import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.getTasksList.length,
        itemBuilder: (BuildContext context, int index) {
          return TaskTile(
            taskTitle: taskData.getTasksList[index].name,
            isChecked: taskData.getTasksList[index].isDone,
            toggleCheckBoxState: (bool? checkBoxState) {
              taskData.toggleDone(index);
            },
            longPressCallback: () {
              taskData.deleteTask(index);
            },
          );
        },
      );
    });
  }
}
