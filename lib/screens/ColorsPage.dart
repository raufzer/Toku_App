import 'package:flutter/material.dart';
import 'package:toku_app/components/Items_in_the_categories.dart';
import '../Models/Items_content.dart';

class ColorsPageWidget extends StatelessWidget {
  final List<items_content> colors = const [
    items_content(
      sound: 'black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: "Burakku",
      enName: 'Black',
    ),
    items_content(
      sound: 'brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: "Chairo",
      enName: 'Brown',
    ),
    items_content(
      sound: 'gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: "Gurei",
      enName: 'Gray',
    ),
    items_content(
      sound: 'green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: "Midori",
      enName: 'Green',
    ),
    items_content(
      sound: 'red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: "Aka",
      enName: 'Red',
    ),
    items_content(
      sound: 'dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: "Ichi",
      enName: 'Dusty Yellow',
    ),
    items_content(
      sound: 'white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: "Shiroi",
      enName: 'White',
    ),
    items_content(
      sound: 'yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: "Kiiro",
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
            element: colors[index],
            color: Color.fromARGB(255, 126, 41, 166),
            WhichPage: 'colors',
          );
        },
      ),
    );
  }
}
