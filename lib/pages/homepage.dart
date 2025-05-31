import 'package:flutter/material.dart';
import 'package:todo_app/util/dialog_box.dart';
import 'package:todo_app/pages/todo_tile.dart';
class HomePage extends StatefulWidget {
  const HomePage ({super.key});
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }

}

class _HomePageState extends State<HomePage>{

List <Map<String,dynamic>> todoList = [
  {"task": "makara", "complete":true},
  {"task": "seav", "complete":false},
  {"task": "makara-seav", "complete":true},
];
final _controller = TextEditingController();
void checkBoxChange (bool? value, int index){
  setState(() {
    todoList[index]["complete"] = value;
  });
}

void saveNewTask() {
  setState(() {
    todoList.add(
      {
        "task" : _controller.text,
        "complete": false,
      }
    );
    _controller.clear();
  });
  Navigator.of(context).pop();
}

void createNewTask(){
  showDialog(
    context: context, 
    builder: (context){
      return DialogBox(
        textController: _controller,
        onSave: saveNewTask,
        onCancel: () => Navigator.of(context).pop(),
      );
    });
}

void deleteTask(int index){
  setState(() {
    todoList.removeAt(index);
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade200,
        title: Center(
          child: Text("My ToDo App",
            style: TextStyle(
              color: Colors.white ,
              ),
              )
          ),
          elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context,index){
            return TodoTile(
              taskName: todoList[index]["task"],
              taskCompleted: todoList[index]["complete"],
              onChanged: (value) => checkBoxChange(value, index),
              deleteFunction: (context) => deleteTask(index)
            );
          }
          ),
      ),
    );
  }
}