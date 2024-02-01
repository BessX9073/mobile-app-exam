import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'thrid_screen.dart';
import 'woman_screen.dart';
import 'man_screen.dart';
import 'kid_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Two Routes Example',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/thrid' : (context) => ThridScreen(),
        '/woman_page' : (context) => WomanScreen(),
        '/man_page' : (context) => ManScreen(),
        '/kid_page' : (context) => KidScreen(),
      },
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
