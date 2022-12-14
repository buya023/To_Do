
import 'package:flutter/material.dart';
class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.pink[300],
      content: Container (
        height: 120,
        child: Column(children: [
          // get user's input
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task"
              ),
          ),
          // buttens => save and cancel.
          
        ],)
      ),
    );
  }
}