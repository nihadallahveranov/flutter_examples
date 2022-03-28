import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyHomePageBody(),
      backgroundColor: Colors.black,
    );
  }
}

class MyHomePageBody extends StatefulWidget {
  @override
  State<MyHomePageBody> createState() => _MyHomePageBodyState();
}

class _MyHomePageBodyState extends State<MyHomePageBody> {
  void playTheSound(String soundName) {
    player.play(soundName);
  }

  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: buildFlatButton('bip.wav', Colors.pink),
                ),
                Expanded(
                  child: buildFlatButton('bongo.wav', Colors.amber),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: buildFlatButton('clap1.wav', Colors.green),
                ),
                Expanded(
                  child: buildFlatButton('clap2.wav', Colors.blueGrey),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: buildFlatButton('clap3.wav', Colors.purple),
                ),
                Expanded(
                  child: buildFlatButton('crash.wav', Colors.indigo),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: buildFlatButton('how.wav', Colors.orange),
                ),
                Expanded(
                  child: buildFlatButton('oobah.wav', Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  FlatButton buildFlatButton(String soundName, Color color) {
    return FlatButton(
      onPressed: () {
        playTheSound(soundName);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(16.0),
          color: color,
        ),
      ),
    );
  }
}

