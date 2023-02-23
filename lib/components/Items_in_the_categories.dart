import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../Models/Items_content.dart';

class Items extends StatelessWidget {
  const Items({required this.number,required this.color});
  final items_content number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            child: Image.asset(number.image),
            color: Color.fromARGB(255, 255, 241, 217),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  number.enName,
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
              AudioCache player = AudioCache(prefix: 'assets/sounds/numbers/');
              player.play(number.sound);
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
