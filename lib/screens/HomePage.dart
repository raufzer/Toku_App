import 'package:flutter/material.dart';
import 'package:toku_app/components/Category.dart';
import 'package:toku_app/screens/NumbersPage.dart';
import 'package:toku_app/screens/ColorsPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 251, 240, 207),
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xff46322b),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: Colors.orange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'FamilyMembers',
            color: Color.fromARGB(255, 2, 157, 64),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMembersPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: Color.fromARGB(255, 126, 41, 166),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Pharses',
            color: Color.fromARGB(255, 9, 170, 198),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
