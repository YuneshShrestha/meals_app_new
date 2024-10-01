import 'package:flutter/material.dart';
import 'package:meals_app_new/view/pages/home_page.dart';
import 'package:meals_app_new/view/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/second_page": (context) => SecondPage(),
      },
    );
  }
}
