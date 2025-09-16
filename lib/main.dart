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
  final List<Map<String, dynamic>> Rings = [
    {"file": "music-1.mp3", "label": "Nokia", "color": Colors.red},
    {"file": "music-2.mp3", "label": "Samsung", "color": Colors.blue},
    {"file": "music-3.mp3", "label": "Laptop", "color": Colors.green},
    {"file": "music-4.mp3", "label": "iPhone", "color": Colors.purple},
    {"file": "music-5.mp3", "label": "Old Phone", "color": Colors.orange},
    {"file": "music-6.mp3", "label": "Digital Tone", "color": Colors.teal},
    {"file": "music-7.mp3", "label": "Classic", "color": Colors.black},
  ];

  final AudioPlayer play = AudioPlayer();

  playAudio(String source) async {
   
    await play.play(AssetSource(source));
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
        body:
           
            ListView.builder(
              itemCount: Rings.length,
              itemBuilder: (context, index) {
                Map ring = Rings[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () => playAudio(ring["file"]),
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
                      ring["label"],
                      style: TextStyle(
                        color: ring["color"],
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
