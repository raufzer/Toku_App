import 'package:flutter/material.dart';
import 'package:toku_app/components/Items_in_the_categories.dart';
import '../Models/Items_content.dart';

class Family extends StatelessWidget {
  final List<items_content> family = const [
    items_content(
      sound: 'daughter.wav',
      image: 'family_daughter.png',
      jpName: "Ichi",
      enName: 'Daughter',
    ),
    items_content(
      sound: 'father.wav',
      image: 'family_father.png',
      jpName: "Ichi",
      enName: 'Father',
    ),
    items_content(
      sound: 'grand father.wav',
      image: 'family_grandfather.png',
      jpName: "Ichi",
      enName: 'Grandfather',
    ),
    items_content(
      sound: 'mother.wav',
      image: 'family_mother.png',
      jpName: "Ichi",
      enName: 'mother',
    ),
    items_content(
      sound: 'grand mother.wav',
      image: 'family_grandmother.png',
      jpName: "Ichi",
      enName: 'grandmother',
    ),
    items_content(
      sound: 'son.wav',
      image: 'family_son.png',
      jpName: "Ichi",
      enName: 'son',
    ),
    items_content(
      sound: 'older brother.wav',
      image: 'family_older_brother.png',
      jpName: "Ichi",
      enName: 'older_brother',
    ),
    items_content(
      sound: 'older sister.wav',
      image: 'family_older_sister.png',
      jpName: "Ichi",
      enName: 'older_sister',
    ),
    items_content(
      sound: 'younger brother.wav',
      image: 'family_younger_brother.png',
      jpName: "Ichi",
      enName: 'younger_brother',
    ),
    items_content(
      sound: 'younger sister.wav',
      image: 'family_younger_sister.png',
      jpName: "Ichi",
      enName: 'younger_sister',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FamilyMembers'),
        backgroundColor: Color.fromARGB(255, 2, 157, 64),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return Items(
            number: family[index],
            color: Color.fromARGB(255, 2, 157, 64),
          );
        },
      ),
    );
  }
}
