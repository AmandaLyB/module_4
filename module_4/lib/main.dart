import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import './word.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _wordIndex = 0;
  final _player = AudioPlayer();

  void _switchWord() {
    setState(() {
      _wordIndex += 1;
      if (_wordIndex > 1) {
        _wordIndex = 0;
      }

    });
    print(_wordIndex);
  }

  void playChinese() {
    setState(() {
      _player.play(AssetSource('purple_chinese.mp3'));
    });
  }
  void playEnglish() {
    setState(() {
      _player.play(AssetSource('purple_english.mp3'));
    });
  }
  void playJapanese() {
    setState(() {
      _player.play(AssetSource('purple_japanese.mp3'));
    });
  }
  void playSpanish() {
    setState(() {
      _player.play(AssetSource('purple_spanish.mp3'));
    });
  }

  @override
  Widget build(BuildContext context) {

    var words = [
      'Purple: ',
      'Blue: ',
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Center(child: Text('Practice App')),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Word(words[_wordIndex],
                ),
                ElevatedButton(
                  onPressed: playEnglish,
                  child: const Text('Purple',
                    style: TextStyle(fontSize: 28.0),),
                ),
                ElevatedButton(
                  onPressed: playSpanish,
                  child: const Text('Morado',
                    style: TextStyle(fontSize: 28.0),),
                ),
                ElevatedButton(
                  onPressed: playJapanese,
                  child: const Text('紫',
                      style: TextStyle(fontSize: 28.0),
                    ),
                ),
                ElevatedButton(
                  onPressed: playChinese,
                  child: const Text('紫色的',
                      style: TextStyle(fontSize: 28.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: _switchWord,
                  child: const Text('Next Word',
                    style: TextStyle(fontSize: 28.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// protected the state class, the switchWord function, and the variables by making them private
// added word.dart which handles the input of the word
// styled the Text widget in word.dart
//