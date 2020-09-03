import 'dart:collection';

import 'package:agos_todo_app/models/task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Einkaufen'),
    Task(name: 'Autowaschen'),
    Task(name: 'Putzen')
  ];

  static List<Task> getTasks(BuildContext context){
    return Provider.of<TaskData>(context)._tasks;
  }

   UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskName){
    final Task task = Task(name: taskName);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.isDone = !task.isDone;
    notifyListeners();
  }
  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }


}