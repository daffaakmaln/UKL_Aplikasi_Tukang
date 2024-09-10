import 'package:flutter/material.dart';
import 'package:ukl_perlu_tukang/navigation/navbar1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBar1(),
    );
  }
}