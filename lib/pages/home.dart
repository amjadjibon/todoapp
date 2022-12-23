import 'package:flutter/material.dart';

import 'package:todoapp/constants/colors.dart';
import 'package:todoapp/widgets/appbar.dart';
import 'package:todoapp/widgets/search_box.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
            SearchBox()
          ],
        ),
      ),
    );
  }
}
