import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget{
  final TextEditingController textController;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  const DialogBox ({
    super.key,
    required this.textController,
    required this.onCancel,
    required this.onSave,
    });
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor:Colors.deepOrange.shade100,
      content: SizedBox(
        height: 200,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                hintText: "Add your new task here..."
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  buttonName: "Save", 
                  onPressed: onSave, 
                  buttonColor: const Color.fromARGB(255, 9, 150, 82)
                  ),
                  SizedBox(width: 10,),
                  MyButton(
                  buttonName: "Cancel", 
                  onPressed: onCancel, 
                  buttonColor: Colors.red,
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}