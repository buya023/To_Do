import 'package:flutter/material.dart';
import 'package:to_do_list/utilities/dialog_box.dart';
import 'package:to_do_list/utilities/todo_title.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
// list of todo tasks

List todoList =[
  ["wash tooth", false],
  ["do exercise", false],

];

// checkbox was tapped
void checkBoxChanged( bool? value, int index){
  setState(() {
    todoList[index][1] = !todoList[index][1];
  });
}
// creating new task
void createNewTask (){
  showDialog(
    context: context, 
    builder: (context){
      return DialogBox();
    }
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      appBar: AppBar (
        title: Text('TO DO'),
        elevation: 0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add)),
        body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return ToDoTitle(
              taskName: todoList[index][0],
              taskCompleted: todoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
            );
          },
        ),
    );
  }
}
