import 'package:flutter/material.dart';

/// Flutter code sample for [PopupMenuButton].

// This is the type used by the popup menu below.

class PopUpMenu extends StatefulWidget {
  String? nome;

  PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu>{
  @override
  Widget build(BuildContext context) {
    String? nome;
    return Container( width: 200, height: 200,
      child: Row(
        children: [
          PopupMenuButton<int>(
            initialValue: 1,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
              const PopupMenuItem<int>(
                value: 1,
                child: Text('Bananas'),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text('Bananas 2'),
              ),
              const PopupMenuItem<int>(
                value: 3,
                child: Text('Bananas 3'),
              ),
            ],
            icon: Icon(Icons.home_work),
            onSelected: (value) {
              if (value == 1) {
                setState(() {

                });
              }
            },
          ),
       ],
      ),
    );
  }
}
