import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

 Expanded soundKeyBuild({Color color, int soundNumber}){
     return Expanded(
                child: FlatButton(
                  color: color,
                  onPressed: () {
                    playSound(soundNumber);
                  },
                ),
              );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             soundKeyBuild(color: Colors.red, soundNumber: 1),
             soundKeyBuild(color: Colors.orange, soundNumber: 2),
             soundKeyBuild(color: Colors.yellow, soundNumber: 3),
             soundKeyBuild(color: Colors.green, soundNumber: 4),
             soundKeyBuild(color: Colors.teal, soundNumber: 5),
             soundKeyBuild(color: Colors.blue, soundNumber: 6), 
             soundKeyBuild(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
