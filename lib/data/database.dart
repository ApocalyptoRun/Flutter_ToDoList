import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  

   final myBox = Hive.box('myBox');

   void createInitialData() {
     toDoList = [
      ["Make the bed", false],
      ["Go to pray", false],
    ];
   }

   void loadData(){
      toDoList = myBox.get("TODOLIST");
   }

   void updateDatabase() {
     myBox.put("TODOLIST", toDoList);
   }

}