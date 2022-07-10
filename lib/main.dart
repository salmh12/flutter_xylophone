import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
         
          // ignore: deprecated_member_use
          child: FlatButton(color:Colors.red,
          onPressed : (){
          final player = AudioCache();
          player.play('assets/note1.wav');
          }),
        ),
      ),
    );
  }
}
