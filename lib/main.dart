
import 'package:bmi_calculator/calc_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // runApp(Container(color: Colors.greenAccent));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MaterialApp(
      home: CalcPage(),);

    // Scaffold(appBar: AppBar(title: Text('Hello')),
    // body: Container(
    //   color: Colors.purple,
    //   width: 350,
    //   height: 250,

    // ),
    // ),
    // );
  }
}
