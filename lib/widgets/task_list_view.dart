import 'package:agos_todo_app/models/task.dart';
import 'package:flutter/material.dart';

import 'task_list_tile.dart';

class TaskListView extends StatefulWidget {

  final List<Task> tasks;

  TaskListView(@required this.tasks);

  @override
  _TaskListViewState createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {


  @override
  Widget build(BuildContext context) {
    print("num tasks" + widget.tasks.length.toString());
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {

          Function onPressedCallBack = (bool newValue) {
            setState(() {
              widget.tasks[index].isDone = !widget.tasks[index].isDone;
            });
          };

          return TaskListTile(
            taskTitle: widget.tasks[index].name,
            taskSelected: widget.tasks[index].isDone,
            onPressedCallBack: onPressedCallBack,
          );
        });
  }
}
