import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Acak Dadu'
            )
          ),
        ),
        body: AcakDadu(),
      ),
    );
  }
}

class AcakDadu extends StatefulWidget{
  const AcakDadu({Key? key}) : super(key: key);

  @override
  _AcakDaduState createState() => _AcakDaduState();
}

class _AcakDaduState extends State<AcakDadu> {
  int daduKiri = 1;
  int daduKanan = 2;

  void acakAngkaDadu() {
    setState(() {
      daduKiri = Random().nextInt(6) + 1;
      daduKanan = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Image.asset('images/dice$daduKiri.png',
              ),
              onTap: (){
                acakAngkaDadu();
              },
            ),
          ),
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              child: Image.asset('images/dice$daduKanan.png'
              ),
              onTap: () {
                acakAngkaDadu();
              },
            ),
          ))
        ],
      ),
    );
  }
}

