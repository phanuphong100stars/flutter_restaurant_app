import 'package:flutter/material.dart';
import 'package:restaurant_app/pages/intro_page.dart';
import 'package:restaurant_app/pages/menu_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      routes: {
        '/intro-page': (context) => const IntroPage(),
        '/menu-page': (context) => const MenuPage(),
      },
    );
  }
}
