import 'package:flutter/material.dart';

import '../screens/configscreen.dart';
import '../screens/sincronizescreen.dart';


class PopUpListMenu extends StatelessWidget {
  const PopUpListMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context) {
      return [
        PopupMenuItem(
          value: 1,
            child: Row(
          children: [
            const Text(
              'Sair',
              style: TextStyle(),
            ),
            Container(
              alignment: AlignmentDirectional.center,
              width: 50,
              height: 50,
              child: const Icon(Icons.logout_outlined),
            )
          ],
        )),
        PopupMenuItem<int>(
            value: 2,
            child: Row(
              children: [
                Text(
                  'Configuração',
                  style: TextStyle(),
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  width: 50,
                  height: 50,
                  child: const Icon(Icons.settings),
                )
              ],
            )),
        PopupMenuItem<int>(
          value: 3,
          child: Row(
            children: [
              Text('Sincronizar'),
              Container(
                alignment: AlignmentDirectional.center,
                width: 50,
                height: 50,
                child: const Icon(Icons.download_for_offline),
              )
            ],
          ),
        )
      ];
    }, onSelected: (value) {
      if (value == 3) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => SincronizerScreen()));
      }
      if (value==2) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ConfigScreen()));
      }
      if (value ==1) {
        Navigator.pop(context);
      }
    });
  }
}
