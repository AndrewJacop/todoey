import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context, builder: (context) => AddTaskScreen());
            },
            backgroundColor: Colors.lightBlueAccent,
            child: const Icon(Icons.add),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 60, bottom: 30, left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.lightBlueAccent,
                        radius: 30,
                        child: Icon(Icons.list, size: 30)),
                    const SizedBox(height: 10),
                    const Text(
                      'Todoey',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text('${taskData.taskCount} Tasks',
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: TasksList(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
