import 'package:flutter/material.dart';
import 'package:my_first_project/util/my_button.dart';
import 'package:my_first_project/data/database.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  ToDoDatabase db = ToDoDatabase();

   DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
              controller: controller,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task"
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(text: "save", onPressed: onSave),

              const SizedBox(width: 8,),

              MyButton(text: "Cancel", onPressed: onCancel)
            ],
          )
        ],
        ),
      ),
    );
  }
}