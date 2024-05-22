import 'dart:developer';

import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  TextEditingController numone = TextEditingController();
  TextEditingController numtwo = TextEditingController();
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
            controller: numone,
            decoration: InputDecoration(
                labelText: 'Weight', hintText: 'Enter Weight'),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: numtwo,
            decoration: InputDecoration(
                labelText: 'Height', hintText: 'Enter Height'),
            keyboardType: TextInputType.number,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  result = (double.parse(numone.text) + double.parse(numtwo.text)) as int;
                  log('Result : $result');
                  setState(() {});
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
          Text(
            'Result: $result',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
