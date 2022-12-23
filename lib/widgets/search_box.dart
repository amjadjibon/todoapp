import 'package:flutter/material.dart';

Widget searchBox() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: const TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20,
          minWidth: 20,
        ),
      ),
    ),
  );
}
