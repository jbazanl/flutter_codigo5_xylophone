import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {

  AudioCache audioCache = AudioCache();

  void playNote(int number){
    audioCache.play("audios/note$number.wav");
  }

  Widget buildKey(int nota, Color color){
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playNote(nota);
          },
          child: const Text(
            "",
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("XylophoneApp"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(1, Colors.deepPurple),
          buildKey(2, Colors.redAccent),
          buildKey(3, Colors.greenAccent),
          buildKey(4, Colors.yellowAccent),
          buildKey(5, Colors.orangeAccent),
          buildKey(6, Colors.blueAccent),
          buildKey(7, Colors.pinkAccent),
        ],
      ),
    );
  }
}