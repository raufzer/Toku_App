import 'package:flutter/material.dart';
import 'package:toku_app/components/Items_in_the_categories.dart';
import '../Models/Items_content.dart';

class NumbersPageWidget extends StatelessWidget {
  final List<items_content> numbers = const [
    items_content(
      sound: 'number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: "Ichi",
      enName: 'One',
    ),
    items_content(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: "Ni",
        enName: 'Two'),
    items_content(
        sound: 'number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: "San",
        enName: 'Three'),
    items_content(
        sound: 'number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: "Shi",
        enName: 'Four'),
    items_content(
        sound: 'number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: "Go",
        enName: 'Five'),
    items_content(
        sound: 'number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: "Roky",
        enName: 'Six'),
    items_content(
        sound: 'number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: "Shichi",
        enName: 'Seven'),
    items_content(
        sound: 'number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: "Hachi",
        enName: 'Eight'),
    items_content(
        sound: 'number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: "ku , kyuu",
        enName: 'Nine'),
    items_content(
        sound: 'number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: "juu",
        enName: 'Ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Items(
            element: numbers[index],
            color: Colors.orange,
            WhichPage: 'numbers',
          );
        },
        // Items(number: numbers[0]),
        // Items(number: numbers[1]),
        // Items(number: numbers[2]),
        // Items(number: numbers[3]),
        // Items(number: numbers[4]),
        // Items(number: numbers[5]),
        // Items(number: numbers[6]),
        // Items(number: numbers[7]),
        // Items(number: numbers[8]),
        // Items(number: numbers[9]),
      ),
    );
  }
}

// List<Widget> getList(List<Number> numbers){
//   List<Widget> itemsList =[];
//   for(int i =0;i<numbers.length;i++){
// itemsList.add(Items(number : numbers.[i]));
//   }
//   return itemsList;
// }