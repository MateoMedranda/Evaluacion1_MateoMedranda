import 'package:evaluacion_mateo_medranda/View/numberPage.dart';
import 'package:evaluacion_mateo_medranda/View/numberResultPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calcular amistad',
      initialRoute: "/",
      routes: {
        '/': (context) => NumberPage(),
        '/resultFriendship': (context) => NumberResultPage(),
      },
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
      ),

    );
  }
}

