import 'package:flutter/material.dart';

class HomeScreen_AnimatedBottomBar extends StatefulWidget {

  @override
  State<HomeScreen_AnimatedBottomBar> createState() => _HomeScreen_AnimatedBottomBarState();
}

class _HomeScreen_AnimatedBottomBarState extends State<HomeScreen_AnimatedBottomBar> {
  int number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home,color: Colors.red,),
        onPressed: (){
             number++;
             setState(() {

             });
        },
      ),
      body: Text("HomeScreen"+number.toString(),style: TextStyle(fontSize: 30.0),),
    );
  }
}
