import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addNewTask;
  AddTaskScreen(this.addNewTask);

  @override
  Widget build(BuildContext context) {
    TextEditingController taskTextController = TextEditingController();
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              TextField(
                controller: taskTextController,
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                child: Text('Add'),
                onPressed: () {
                  addNewTask(taskTextController);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
