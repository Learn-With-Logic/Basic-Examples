import 'dart:math';
import 'package:flutter/material.dart';

import 'mybar.dart';

class HomeScreen_ChartBar extends StatelessWidget {

 List<int>  get numbers{
   return List.generate(7, (index) => Random().nextInt(100)).toList();
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.logout))]
      ),
      body:Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: numbers.map((e) => MyBar(value: e)).toList(),
      ),
    ) ,);
  }
}
