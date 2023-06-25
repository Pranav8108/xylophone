import 'dart:html';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int SoundNo) {
    final player = AudioCache();
    player.play('note$SoundNo.wav');
  }

  Expanded buildKey({Color color,int soundNo}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNo);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.lime, soundNo:1),
              buildKey(color: Colors.blue, soundNo:2),
              buildKey(color: Colors.green, soundNo:3),
              buildKey(color: Colors.white, soundNo:4),
              buildKey(color: Colors.purple, soundNo:5),
              buildKey(color: Colors.orange, soundNo:6),
              buildKey(color: Colors.pink, soundNo:7),
            ],
          ),
        ),
      ),
    );
  }
}
