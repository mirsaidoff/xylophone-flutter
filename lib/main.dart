import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey(int number, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: color,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(7, Colors.deepOrange),
              buildKey(6, Colors.green),
              buildKey(5, Colors.yellow),
              buildKey(4, Colors.red),
              buildKey(3, Colors.blue),
              buildKey(2, Colors.cyan),
              buildKey(1, Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }
}
