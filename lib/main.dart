import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // ignore: deprecated_member_use
          child: InkWell(
            //color:Colors.red,
            onTap: () {
              final player = AudioPlayer();
              print('hello');
              //   player.setSource();
              player.play(AssetSource('note1.wav'));
            },
            child: Container(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
