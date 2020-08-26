import 'package:agos_todo_app/models/task.dart';
import 'package:flutter/material.dart';

import 'task_list_tile.dart';

class TaskListView extends StatefulWidget {
  @override
  _TaskListViewState createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  List<Task> tasks = [
    Task(name: 'Einkaufen'),
    Task(name: 'Autowaschen'),
    Task(name: 'Putzen')
  ];

  @override
  Widget build(BuildContext context) {
    print("num tasks" + tasks.length.toString());
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {

          Function onPressedCallBack = (bool newValue) {
            setState(() {
              tasks[index].isDone = !tasks[index].isDone;
            });
          };

          return TaskListTile(
            taskTitle: tasks[index].name,
            taskSelected: tasks[index].isDone,
            onPressedCallBack: onPressedCallBack,
          );
        });
  }
}
