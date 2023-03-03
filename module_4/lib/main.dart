import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var wordIndex = 0;
  final player = AudioPlayer();

  void switchWord() {
    setState(() {
      wordIndex += 1;
      if (wordIndex > 1) {
        wordIndex = 0;
      }

    });
    print(wordIndex);
  }

  void playChinese() {
    setState(() {
      player.play(AssetSource('purple_chinese.mp3'));
    });
  }
  void playEnglish() {
    setState(() {
      player.play(AssetSource('purple_english.mp3'));
    });
  }

  void playJapanese() {
    setState(() {
      player.play(AssetSource('purple_japanese.mp3'));
    });
  }

  void playSpanish() {
    setState(() {
      player.play(AssetSource('purple_spanish.mp3'));
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
                Text(words[wordIndex],
                  style: TextStyle(
                    height: 5,
                    fontSize: 28.0,
                    color: Colors.deepPurple,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),),
                ElevatedButton(
                  onPressed: playEnglish,
                  child: Text('Purple',
                    style: TextStyle(fontSize: 28.0),),
                ),
                ElevatedButton(
                  onPressed: playSpanish,
                  child: Text('Morado',
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
                  child: Text('紫色的',
                      style: TextStyle(fontSize: 28.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: switchWord,
                  child: Text('Next Question',
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

// added elevated button
// added named functions, one to go to the next word and 4 to play the audio files
// changed app widget to stateful widget by changing stateless to stateful,
// added dependencies and sounds folder to pubspec.yaml
