import 'package:flutter/material.dart';

import 'package:todoapp/constants/colors.dart';
import 'package:todoapp/widgets/appbar.dart';
import 'package:todoapp/widgets/search_box.dart';
import 'package:todoapp/widgets/todo_items.dart';

import '../widgets/bottom_navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: todoBGColor,
      appBar: const BuildAppbar(),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: Container(
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
    );
  }

  Expanded _buildExpandedTodoList() {
    return Expanded(
      child: ListView(
        children: [
          _buildAllTodoText(),
          const TodoItems(),
          const TodoItems(),
          const TodoItems(),
          const TodoItems(),
          const TodoItems(),
          const TodoItems(),
          const TodoItems(),
          const TodoItems(),
          const TodoItems(),
          const TodoItems(),
          const TodoItems(),
          const TodoItems(),
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
