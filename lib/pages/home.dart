import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:todoapp/constants/colors.dart';
import 'package:todoapp/widgets/appbar.dart';
import 'package:todoapp/widgets/search_box.dart';
import 'package:todoapp/widgets/todo_items.dart';

import '../models/todo.dart';
import '../widgets/bottom_navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoList = Todo.todoList;
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: todoBGColor,
      appBar: const BuildAppbar(),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
                searchBox(),
                _buildExpandedTodoList(),
              ],
            ),
          ),
          _buildAddTask(),
        ],
      ),
    );
  }

  void _handleTodoChange(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _handleTodoDelete(String id) {
    setState(() {
      todoList.removeWhere((todo) => todo.id == id);
    });
  }

  void _addTodoItem(String title) {
    setState(() {
      todoList.add(
        Todo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          title: title,
          isDone: false,
        ),
      );
    });
    _todoController.clear();
  }

  Align _buildAddTask() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _todoController,
                    decoration: const InputDecoration(
                      hintText: 'Add new task',
                      border: InputBorder.none,
                    ),
                  )),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 20,
                bottom: 20,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(60, 60),
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {
                  print('Add new task');
                  _addTodoItem(_todoController.text);
                },
                child: const Text(
                  '+',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Expanded _buildExpandedTodoList() {
    return Expanded(
      child: ListView(
        children: [
          _buildAllTodoText(),
          for (Todo todo in todoList)
            TodoItems(
              todo: todo,
              onTodoChange: _handleTodoChange,
              onTodoDelete: _handleTodoDelete,
            ),
        ],
      ),
    );
  }

  Container _buildAllTodoText() {
    return Container(
      margin: const EdgeInsets.only(
        top: 50,
        bottom: 20,
      ),
      child: const Text(
        'All Todos',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
