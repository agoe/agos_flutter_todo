import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function  addTaskCallback;
  static String newTaskTitle ="";

  AddTaskScreen(this.addTaskCallback) ;

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
                  print(newTaskTitle);
                  addTaskCallback(newTaskTitle);
                },
            )
          ],
        ),
      ),
    );
  }
}
