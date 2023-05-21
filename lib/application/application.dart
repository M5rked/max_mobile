
import 'package:flutter/material.dart';

import '../screens/mainscreen.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black12,
        ),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}