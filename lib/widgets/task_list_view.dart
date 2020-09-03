import 'package:agos_todo_app/models/task.dart';
import 'package:agos_todo_app/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'task_list_tile.dart';

class TaskListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              Task task = taskData.tasks[index];
              return TaskListTile(
                taskTitle: task.name,
                taskSelected: task.isDone,
                onPressedCallBack: (isDone){
                  taskData.updateTask(task);
                },
                onLongPressedCallBack: (){
                  taskData.deleteTask(task);
                },
              );
            });
      },
    );
  }
}
