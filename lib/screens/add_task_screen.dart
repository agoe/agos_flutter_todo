import 'package:agos_todo_app/models/task_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  static String newTaskTitle ="";

  @override
  Widget build(BuildContext context) {
    print("build add_task_screen");

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              onChanged: (newText){
                newTaskTitle = newText;
                print(newTaskTitle);
              },
            ),
            SizedBox(height: 10.0,),
            FlatButton(
                child: Text(
                    'Add',
                style: TextStyle(color: Colors.white),),
                color: Colors.lightBlueAccent,
                onPressed: (){
                  Provider.of<TaskData>(context).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
            )
          ],
        ),
      ),
    );
  }
}
