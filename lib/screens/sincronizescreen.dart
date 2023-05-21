import 'package:flutter/material.dart';
import '../widgets/downnavigation.dart';
import '../widgets/popuplistmenusincronizer.dart';


class SincronizerScreen extends StatelessWidget {
  const SincronizerScreen({Key? key}) : super(key: key);

  @override
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
            'Max-Mobile : Sincroniza',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [PopUpListMenuSinc()],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationList(),
      body: Column(
        children: [
          SearchBar(textStyle: MaterialStateProperty.all
            (TextStyle(color: Colors.redAccent))),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 380,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Icon(Icons.key),
                    ),
                  ),
                  Text(
                    'Ativar Aparelho',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Icon(Icons.smartphone_rounded),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(backgroundColor:
                MaterialStateProperty.resolveWith<Color?>((states) {
                  if(states.contains(MaterialState.pressed)){
                    return Colors.redAccent;
                  }
              return Colors.red;
            })),
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(child: Icon(Icons.person_add_alt,color: Colors.black,)),
                  Text(
                    'Receber Cadastros',
                    style: TextStyle(fontSize: 18,color: Colors.black),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton( onPressed: () {},
            style: ButtonStyle(backgroundColor:
            MaterialStateProperty.resolveWith<Color?>((states) {
              if(states.contains(MaterialState.pressed)){
                return Colors.redAccent;
              }
              return Colors.red;
            })),
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(Icons.person_add_alt_1,color: Colors.black,),
                  ),
                  Text(
                    'Enviar Cadastros',
                    style: TextStyle(fontSize: 18,color: Colors.black),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton( onPressed: () {},
            style: ButtonStyle(backgroundColor:
            MaterialStateProperty.resolveWith<Color?>((states) {
              if(states.contains(MaterialState.pressed)){
                return Colors.redAccent;
              }
              return Colors.red;
            })),
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(Icons.shopping_basket_outlined,color: Colors.black,),
                  ),
                  Text(
                    'Receber Vendas',
                    style: TextStyle(fontSize: 18,color: Colors.black),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton( onPressed: () {},
            style: ButtonStyle(backgroundColor:
            MaterialStateProperty.resolveWith<Color?>((states) {
              if(states.contains(MaterialState.pressed)){
                return Colors.redAccent;
              }
              return Colors.red;
            })),
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(Icons.shopping_basket,color: Colors.black,),
                  ),
                  Text(
                    'Enviar Vendas',
                    style: TextStyle(fontSize: 18,color: Colors.black),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
