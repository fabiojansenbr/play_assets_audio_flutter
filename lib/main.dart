import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play audio Gatto Filho',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Play audio Gatto Filho'),
        ),
        body: Center(
          child: Container(
              child: Row(
            children: <Widget>[
              new IconButton(
                iconSize: 40,
                onPressed: _playMusic,
                icon: Icon(Icons.play_arrow),
                color: Colors.teal,
              ),
              new IconButton(
                iconSize: 40,
                onPressed: _stopMusic,
                icon: Icon(Icons.pause),
                color: Colors.teal,
              ),
            ],
          )),
        ),
      ),
    );
  }

  _playMusic() {
    AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();

    _assetsAudioPlayer.open(AssetsAudio(
      asset: "alarme.mp3",
      folder: "assets/audios/",
    ));

    _assetsAudioPlayer.play();
  }

  _stopMusic() {
    AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
    _assetsAudioPlayer.stop();
  }
}
