import 'package:flutter/material.dart';
import 'package:toku_app/components/Items_in_the_categories.dart';
import '../Models/Items_content.dart';

class FamilyPageWidget extends StatelessWidget {
  final List<items_content> family = const [
    items_content(
      sound: 'daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: "Musume",
      enName: 'Daughter',
    ),
    items_content(
      sound: 'father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: "Chichioya",
      enName: 'Father',
    ),
    items_content(
      sound: 'grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: "Oji San",
      enName: 'Grandfather',
    ),
    items_content(
      sound: 'mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: "Hahaoya",
      enName: 'Mother',
    ),
    items_content(
      sound: 'grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: "Oji San",
      enName: 'Grandmother',
    ),
    items_content(
      sound: 'son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: "Musuko",
      enName: 'Son',
    ),
    items_content(
      sound: 'older brother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: "Ichi",
      enName: 'Older_brother',
    ),
    items_content(
      sound: 'older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: "Ichi",
      enName: 'older_sister',
    ),
    items_content(
      sound: 'younger brother.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: "Ichi",
      enName: 'younger_brother',
    ),
    items_content(
      sound: 'younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: "Ichi",
      enName: 'younger_sister',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FamilyMembers'),
      backgroundColor: Color(0xff46322b),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return Items(
            element: family[index],
            color: Color.fromARGB(255, 2, 157, 64),
            WhichPage: 'family_members',
          );
        },
      ),
    );
  }
}
