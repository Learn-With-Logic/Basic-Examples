import 'package:flutter/material.dart';

class HomeScreen_Neumorph extends StatefulWidget {
  @override
  State<HomeScreen_Neumorph> createState() => _HomeScreen_NeumorphState();
}

class _HomeScreen_NeumorphState extends State<HomeScreen_Neumorph> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Demo Neumorphism'),
      ),
      body: Center(
          child: Container(
            width: 100,
            height: 100,

            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 30.0,
                  color: Colors.white,
                  offset: Offset(-10,-10),
                ),

                BoxShadow(

                blurRadius: 30.0,
                color: Colors.black,
                offset: Offset(10,10),
              ),
              ]
            ),

          )),
    );
  }
}
