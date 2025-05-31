import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/Data/database.dart';
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

final _myBox = Hive.box('mybox');
TodoDatabase db = TodoDatabase();

@override
  void initState() {
    //if this is the first time ever the app open, then follow default data will create
    if(_myBox.get("TODOLIST") == null){
      db.createInitialData();
      db.updateData();
    }
    //load data from database
    else{
      db.loadData();
    }
    super.initState();
  }

final _controller = TextEditingController();
void checkBoxChange (bool? value, int index){
  setState(() {
    db.todoList[index]["complete"] = value;
  });
  db.updateData();
}

void saveNewTask() {
  setState(() {
    db.todoList.add(
      {
        "task" : _controller.text,
        "complete": false,
      }
    );
    _controller.clear();
  });
  Navigator.of(context).pop();
  db.updateData();
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
  if (index < 0 || index >= db.todoList.length) return;
  setState(() {
    db.todoList.removeAt(index);
  });
  db.updateData();
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
          itemCount: db.todoList.length,
          itemBuilder: (context,index){
            return TodoTile(
              taskName: db.todoList[index]["task"],
              taskCompleted: db.todoList[index]["complete"],
              onChanged: (value) => checkBoxChange(value, index),
              deleteFunction: (context) => deleteTask(index)
            );
          }
          ),
      ),
    );
  }
}