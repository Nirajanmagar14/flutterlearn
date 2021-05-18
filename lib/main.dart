import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyHomePage",
      theme: ThemeData(
        primaryColor: Colors.blue,
        bottomAppBarColor: Colors.green,
      ),
      home: Material(
        child: Center(
          child: Container(
            child: Text(
              "Welcome To MY Windows",
              style: TextStyle(fontSize: 25.0, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
