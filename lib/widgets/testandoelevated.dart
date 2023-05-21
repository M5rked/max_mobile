import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElevatedTeste extends StatelessWidget {
  const ElevatedTeste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 80,
      child: ElevatedButton.icon(
        onPressed: (){print('a');},
        icon: const Icon(Icons.shop),
        label: const Text('Comprar'),
      ),
    );
  }
}
