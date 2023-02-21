import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/model/task_data.dart';
import 'package:todaydo_app/screens/add_task_screen.dart';

import '../model/task.dart';
import '../widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                      child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen((newTaskTitle) {
                      //setState(() {
                       // tasks.add(Task(name: newTaskTitle));
                       // Navigator.pop(context);
                     // });
                    }),
                  )));
        },
        backgroundColor: Colors.indigo,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(width: 20),
                Text(
                  'ToDayDo',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: Container(
              decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TasksList(),
            ))
          ],
        ),
      ),
    );
  }
}
