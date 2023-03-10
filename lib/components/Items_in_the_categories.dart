import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../Models/Items_content.dart';

class Items extends StatelessWidget {
  const Items({required this.element,required this.color, required this.WhichPage});
  final items_content element;
  final Color color;
  final String WhichPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            child: Image.asset(element.image),
            color: Color.fromARGB(255, 255, 241, 217),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  element.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  element.enName,
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
              player.play(element.sound);
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
