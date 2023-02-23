import 'package:flutter/material.dart';
import 'package:toku_app/components/Items_in_the_categories.dart';
import '../Models/Items_content.dart';

class Colorspage extends StatelessWidget {
  final List<items_content> colors = const [
    items_content(
      sound: 'black.wav',
      image: 'color_black.png',
      jpName: "Ichi",
      enName: 'Black',
    ),
    items_content(
      sound: 'brown.wav',
      image: 'color_brown.png',
      jpName: "Ichi",
      enName: 'Brown',
    ),
    items_content(
      sound: 'gray.wav',
      image: 'color_gray.png',
      jpName: "Ichi",
      enName: 'Gray',
    ),
    items_content(
      sound: 'green.wav',
      image: 'color_green.png',
      jpName: "Ichi",
      enName: 'Green',
    ),
    items_content(
      sound: 'red.wav',
      image: 'color_red.png',
      jpName: "Ichi",
      enName: 'Red',
    ),
    items_content(
      sound: 'dusty yellow.wav',
      image: 'color_dusty_yellow.png',
      jpName: "Ichi",
      enName: 'Dusty Yellow',
    ),
    items_content(
      sound: 'white.wav',
      image: 'color_white.png',
      jpName: "Ichi",
      enName: 'White',
    ),
    items_content(
      sound: 'yellow.wav',
      image: 'yellow.png',
      jpName: "Ichi",
      enName: 'Yellow',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
      backgroundColor: Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Items(
            number: colors[index],
            color: Color.fromARGB(255, 126, 41, 166),
            WhichPage: 'colors',
          );
        },
      ),
    );
  }
}
