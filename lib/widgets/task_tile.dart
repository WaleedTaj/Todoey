import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) checkboxCallback;
  final Function() onLongPressCallback;

  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
    required this.onLongPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 15,
            backgroundColor: Colors.lightBlueAccent,
            child: Icon(Icons.check, color: Colors.white),
          ),
          title: Text(
            taskTitle,
            style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
            ),
          ),
          onLongPress: onLongPressCallback,
          trailing: Checkbox(
            value: isChecked,
            onChanged: checkboxCallback,
            activeColor: Colors.lightBlueAccent,
          ),
        ),
        Divider(endIndent: 15, indent: 16),
      ],
    );
  }
}
