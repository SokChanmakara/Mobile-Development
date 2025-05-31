import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  //reference the box
  final _mybox = Hive.box('mybox');

  // initial data when user first using the app
  void createInitialData(){
    todoList = [
  {"task": "makara", "complete":true},
  {"task": "seav", "complete":false},
    ];
  }

  // load data from the database
  void loadData(){
    todoList = _mybox.get("TODOLIST", defaultValue: []);
  }

  //update data in the database
  void updateData(){
    _mybox.put("TODOLIST", todoList);
  }
}