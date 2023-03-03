import 'package:flutter/material.dart';

class Word extends StatelessWidget {
  final String wordText;

  Word(this.wordText);

  @override
  Widget build(BuildContext context) {
    return Text(wordText,
      style: const TextStyle(
        height: 5,
        fontSize: 28.0,
        color: Colors.deepPurple,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold,
        ),
    );
  }
}
