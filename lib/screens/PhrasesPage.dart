import 'package:flutter/material.dart';
import 'package:toku_app/Models/phrases_content.dart';
import 'package:toku_app/components/item_in_the_phrasepage.dart';

class PhrasesPageWidget extends StatelessWidget {
  final List<phrases_content> phrases = const [
    phrases_content(
      sound: 'are_you_coming.wav',
      jpName: "Ko nai no?",
      enName: 'Are you coming?',
    ),
    phrases_content(
      sound: 'how_are_you_feeling.wav',
      jpName: "Go kibun wa ikagadesu ka?",
      enName: 'How are you feeling?',
    ),
    phrases_content(
      sound: 'i_love_anime.wav',
      jpName: "Watashi wa anime ga daisukidesu",
      enName: 'I love anime',
    ),
    phrases_content(
      sound: 'i_love_programming.wav',
      jpName: "Puroguramingu ga daisuki",
      enName: 'I love programming',
    ),
    phrases_content(
      sound: 'what_is_your_name.wav',
      jpName: "Namae wa nandesu ka?",
      enName: 'What is your name?',
    ),
    phrases_content(
      sound: 'where_are_you_going.wav',
      jpName: "Doko ni iku no",
      enName: 'Where are you going?',
    ),
    phrases_content(
      sound: 'yes_im_coming.wav',
      jpName: "Hai, kimasu",
      enName: 'Yes Im coming',
    ),
    phrases_content(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: "Kōdoku suru koto o ",
      enName: 'Dont forget to subscribe',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return phrasepage(
            phrase: phrases[index],
            color: Color.fromARGB(255, 9, 170, 198),
            WhichPage: 'phrases',
          );
        },
      ),
    );
  }
}
