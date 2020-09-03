import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final String taskTitle;
  final bool taskSelected;
  final Function(bool) onPressedCallBack;
  final Function onLongPressedCallBack;

  const TaskListTile(
      {this.taskTitle, this.taskSelected, this.onPressedCallBack, this.onLongPressedCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressedCallBack,
      title: Text(taskTitle,
          style: TextStyle(
            decoration:
                taskSelected ? TextDecoration.lineThrough : TextDecoration.none,
          )),
      trailing: Checkbox(
        value: taskSelected,
        activeColor: Colors.lightBlueAccent,
        onChanged: onPressedCallBack,
      ),
    );
  }
}

/*class TaskCheckBox extends StatelessWidget {
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
}*/
