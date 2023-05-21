import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/downnavigation.dart';
import '../widgets/popuplistmenu.dart';


class ConfigScreen extends StatefulWidget {
  const ConfigScreen({Key? key}) : super(key: key);

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            'lib/assets/images/MAXDATA.webp',
            fit: BoxFit.cover,
          ),
        ),
        titleTextStyle: const TextStyle(fontSize: 20),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Max-Mobile',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [PopUpListMenu()],
      ),
      bottomNavigationBar: BottomNavigationList(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 190,
              width: 200,
              child: Image.asset('lib/assets/images/images.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo não pode ser vazio.';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Código da Empresa'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo não pode ser vazio.';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Código do Vendedor'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.resolveWith<Color?>((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.redAccent;
                  }
                  return Colors.red;
                })),
                child: Container(
                  width: 150,
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Concluir', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
