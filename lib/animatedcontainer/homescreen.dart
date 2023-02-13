import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen_Animatedcontainer extends StatefulWidget {
  @override
  State<HomeScreen_Animatedcontainer> createState() => _HomeScreen_AnimatedcontainerState();
}

class _HomeScreen_AnimatedcontainerState extends State<HomeScreen_Animatedcontainer> {
  @override
  Color? color;
  double? width=100;
  double? height=50;
  bool? ison=true;




  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Animated Container'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: (){
                setState(() {
                  //getcolor();
                  ison=!ison!;

                });
              },
              child: Container(
                height: 50,
                width: 100,
                color: Colors.red,
                child: Center(
                  child: AnimatedContainer(
                    curve: Curves.easeInBack,
                    duration: Duration(milliseconds: 1000),
                    width: ison==true?200:20,
                    height: height,
                    decoration: BoxDecoration(
                      color: Colors.white,

                    ),

                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30.0,),
          
          TextButton(onPressed: (){
            getcolor();
            setState(() {

            });

          },child: Text('Click me'),)
        ],
      ),
    );
  }

  getcolor() {
    Random rnd=Random();

    int red=rnd.nextInt(255);
    int green=rnd.nextInt(255);
    int blue=rnd.nextInt(255);

    Color c=Color.fromRGBO(red, green, blue, 1.0);

    return c;



  }
}
