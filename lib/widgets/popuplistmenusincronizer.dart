import 'package:flutter/material.dart';

class PopUpListMenuSinc extends StatelessWidget {
  const PopUpListMenuSinc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context) => [
              PopupMenuItem(
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
              PopupMenuItem(
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
            ]);
  }
}
