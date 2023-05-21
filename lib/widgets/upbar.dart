import 'package:flutter/material.dart';

import 'menubutton.dart';

class UpBar extends StatefulWidget {
  const UpBar({
    super.key,
  });

  @override

  State<UpBar> createState() => _UpBarState();
}

class _UpBarState extends State<UpBar> {
  @override
  PopUpMenu a = PopUpMenu();
  Widget build(BuildContext context) {
    return Row(
      children: [
        PopUpMenu(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'a',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }
}
