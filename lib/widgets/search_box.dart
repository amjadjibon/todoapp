import 'package:flutter/material.dart';

Widget searchBox() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      onChanged: (value) => print(value),
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.all(0),
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20,
          minWidth: 20,
        ),
      ),
    ),
  );
}
