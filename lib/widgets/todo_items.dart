import 'package:flutter/material.dart';
import 'package:todoapp/constants/colors.dart';

class TodoItems extends StatelessWidget {
  const TodoItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: todoBlue,
        ),
        title: const Text(
          'Todo 1',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: const Icon(
          Icons.delete,
          color: todoBlue,
        ),
      ),
    );
  }
}
