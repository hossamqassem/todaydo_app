import 'package:flutter/material.dart';
import 'package:todaydo_app/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go shopping'),
    Task(name: 'read book'),
    Task(name: 'buy car'),
  ];
 void addTask(String newTaskTitle){
   tasks.add(Task(name:newTaskTitle));
   notifyListeners();
 }
void updateTask(Task task){
   task.doneChange();
   notifyListeners();
}
void deleteTask( Task task){
   tasks.remove(task);
   notifyListeners();
}
}