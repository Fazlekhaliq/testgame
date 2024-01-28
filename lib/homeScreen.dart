import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int ballNumber=1;
  int countNumber=0;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
      setState(() {
        ballNumber=Random().nextInt(8)+1;
        countNumber=Random().nextInt(8)+1;
      });

    }, child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Assigmnt",style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
        Text("0$countNumber",style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),),
        Image.asset('assets/ball$ballNumber.png'),
      ],
    ));
  }
}
