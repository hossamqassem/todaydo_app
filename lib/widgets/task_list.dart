import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function(bool?) checkboxChange;
  final Function() listTileDelete;

  const TaskTile({super.key,
    required this.isChecked,
    required this.taskTile,
    required this.checkboxChange, required this.listTileDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTile,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.teal[400],
          value: isChecked,
          onChanged: checkboxChange,
        ) ,
      onLongPress: listTileDelete,
    );
  }
}
