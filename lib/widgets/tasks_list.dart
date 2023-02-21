import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/model/task_data.dart';
import 'package:todaydo_app/widgets/task_list.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTile: taskData.tasks[index].name,
                checkboxChange: (bool? newValue) {
                  taskData.updateTask(taskData.tasks[index]);
                }, listTileDelete: () {
                  taskData.deleteTask(taskData.tasks[index]);

            },

            );
          },
        );
      },
    );
  }
}
