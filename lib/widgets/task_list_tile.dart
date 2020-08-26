import 'package:flutter/material.dart';

class TaskListTile extends StatefulWidget {
  bool isChecked = false;

  @override
  _TaskListTileState createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  bool taskSelected = true;

  void setTaskSelected(bool newValue) {
    setState(() {
      taskSelected = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task',
          style: TextStyle(
            decoration:
                taskSelected ? TextDecoration.lineThrough : TextDecoration.none,
          )),
      trailing: TaskCheckBox(
        taskSelected: taskSelected,
        onCheckBoxToggled: setTaskSelected,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool taskSelected;

  final Function(bool newValue) onCheckBoxToggled;

  const TaskCheckBox({this.taskSelected, this.onCheckBoxToggled});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: taskSelected,
      onChanged: (newValue) {
        onCheckBoxToggled(newValue);
      },
    );
  }
}
