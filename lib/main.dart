import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Naghamat", style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xff8902A2),
        ),
        body: Center(),
      ),
    );
  }
}
