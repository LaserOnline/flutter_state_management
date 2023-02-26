import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './views/shopping_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo GetX',
      home: ShoppingPage(),
    );
  }
}
