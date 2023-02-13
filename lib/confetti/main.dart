import 'package:flutter/material.dart';
import 'myconfettiwidget.dart';

class HomeScreen_Confetti extends StatefulWidget {

  @override
  State<HomeScreen_Confetti> createState() => _HomeScreen_ConfettiState();
}

class _HomeScreen_ConfettiState extends State<HomeScreen_Confetti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Animation Example"),),
      body: MyConfettiWidget(
        child: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.orange,
            child: Center(child: Text('High Score',style:TextStyle(color: Colors.blue,fontSize: 40.0),)),
          ),
        ),

    ),);
  }
}

