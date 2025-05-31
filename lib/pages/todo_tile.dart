import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget{

  final String taskName;
  final bool taskCompleted;
  final Function (bool?)? onChanged;
  final Function (BuildContext)? deleteFunction; 

  const TodoTile ({
    super.key, 
    required this.taskName, 
    required this.taskCompleted, 
    required this.onChanged,
    required this.deleteFunction,
    });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child:Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(12),
              )
          ]),
        child: Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted, 
                onChanged: onChanged,
                activeColor: Colors.black ,
                ),
              Text(
                taskName,
                style: TextStyle(
                  fontSize: 20,
                  decoration: taskCompleted ? TextDecoration.lineThrough : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}