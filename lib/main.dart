import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

   void playsound(int soundnum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnum.wav'));
  }

Expanded buildkey({required Color color , int? soundnum}){
  return Expanded(
    child: InkWell(
                 child: Container(color:color),
                onTap: () {
                  playsound(soundnum!);
                },
              ),
  );
}
  @override
 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          // ignore: deprecated_member_use
          child: Column(
            children: <Widget>[
              buildkey(color: Colors.red, soundnum :1),
              buildkey(color: Colors.orange, soundnum :2),
              buildkey(color: Colors.yellow, soundnum :3),
              buildkey(color: Colors.green, soundnum :4),
              buildkey(color: Colors.teal, soundnum :5),
              buildkey(color: Colors.blue, soundnum :6),
              buildkey(color: Colors.purple, soundnum :7),
            ],
          ),
        ),
      ),
    );
  }
}
