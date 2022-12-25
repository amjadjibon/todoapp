import 'package:flutter/material.dart';

Widget buildBottomNavigationBar() {
  return BottomNavigationBar(
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.list),
        label: 'List',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
    onTap: (index) {
      // Respond to item press.
      switch (index) {
        case 0:
          print('Home');
          break;
        case 1:
          print('List');
          break;
        case 2:
          print('Profile');
          break;
      }
    },
  );
}
