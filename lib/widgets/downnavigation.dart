
import 'package:flutter/material.dart';

class BottomNavigationList extends StatelessWidget {
  const BottomNavigationList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: Colors.red[600],
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              color: Colors.black,
            ),
            label: String.fromEnvironment('Bla')),

        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
            label: String.fromEnvironment('Bla')),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.monetization_on,
              color: Colors.black,
            ),
            label: String.fromEnvironment('Bla'))
      ],
    );
  }
}

