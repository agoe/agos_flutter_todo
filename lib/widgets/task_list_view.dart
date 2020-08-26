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
    return ListView(
      children: <Widget>[
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
      ],
    );
  }
}