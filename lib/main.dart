import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicWidget());
}

class MusicWidget extends StatefulWidget {
  MusicWidget({super.key});

  @override
  State<MusicWidget> createState() => MusicWidgetState();
}

class MusicWidgetState extends State<MusicWidget> {
  final AudioPlayer play = AudioPlayer();

  List<String> Names = [
    "Nokia",
    "Samsung",
    "Laptop",
    "iphone",
    "Old phone",
    "Digital",
    "Classic",
  ];
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.black,
    Colors.green,
    Colors.indigo,
    Colors.orange,
    Colors.pink,
  ];

  playAudio(int musicRank) async {
    await play.play(AssetSource('music-$musicRank.mp3'));
  }

  stopAudio() async {
    await play.stop();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          title: Text("Naghamat", style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xff8902A2),
        ),
        body: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            // Map ring = Rings[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ElevatedButton(
                onPressed: () => playAudio(index + 1),
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                  ),
                  fixedSize: WidgetStatePropertyAll<Size>(
                    Size(MediaQuery.of(context).size.width, 100),
                  ),
                ),
                child: Text(
                  Names[index],
                  style: TextStyle(
                    color: colors[index],
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
