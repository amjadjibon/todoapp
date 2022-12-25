import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors.dart';

import '../models/todo.dart';

class TodoItems extends StatelessWidget {
  final Todo todo;
  final onTodoChange;
  final onTodoDelete;

  const TodoItems({Key? key, required this.todo, required this.onTodoChange, required this.onTodoDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: ListTile(
        onTap: () {
          onTodoChange(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone? Icons.check_box : Icons.check_box_outline_blank,
          color: todoBlue,
        ),
        title: Text(
          todo.title!,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            decoration:
                todo.isDone ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: todoRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            onPressed: () {
              onTodoDelete(todo.id!);
            },
            icon: const Icon(
              Icons.delete,
              size: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
