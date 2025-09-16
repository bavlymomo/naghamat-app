import 'package:flutter/material.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  const MusicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          title: Text("Naghamat", style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xff8902A2),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Text("Apple RingTone"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
