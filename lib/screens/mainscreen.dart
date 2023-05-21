import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:max_moba/screens/sincronizescreen.dart';

import '../widgets/downnavigation.dart';
import '../widgets/popuplistmenu.dart';
import '../widgets/upbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
            'Max-Mobile',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [PopUpListMenu()],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationList(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white54,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              UpBar(),
              const SizedBox(
                width: 200,
                height: 10,
              ),
              SizedBox(
                height: 150,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SincronizerScreen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 300,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[0],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: MediaQuery.of(context).size.width * .1,
                          height: MediaQuery.of(context).size.width * .1,
                          child: const Icon(
                            Icons.shop_outlined,
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 230,
                          height: 30,
                          child: const Text(
                            'Vender',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontStyle: FontStyle.normal),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 25,
              ),
              Container(
                color: Colors.black,
                width: 450,
                height: 0.1,
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SincronizerScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 300,
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green[0],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.calculate_sharp,
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 230,
                        height: 30,
                        child: const Text(
                          'Resumo de Vendas',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
