import 'package:flutter/material.dart';
import 'package:flutter_catalog/Widgets/drawe.dart';

class HomePage extends StatelessWidget {
  final int windows = 10;
  final String name = "pro";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to my windows $windows $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
