import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../Models/phrases_content.dart';

class phrasepage extends StatelessWidget {
  const phrasepage({required this.phrase,required this.color, required this.WhichPage});
  final phrases_content phrase;
  final Color color;
  final String WhichPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AudioCache player = AudioCache(prefix: 'assets/sounds/$WhichPage/');
              player.play(phrase.sound);
            },
            icon: Icon(Icons.play_arrow_rounded),
            color: Colors.white,
            iconSize: 25,
          ),
        ],
      ),
    );
  }
}
