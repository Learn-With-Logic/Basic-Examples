import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demos/animatedbottombar/prouctscreen.dart';
import 'package:flutter/material.dart';

import 'favoritescreen.dart';
import 'homescreen.dart';
class Homepage_AnimatedBottomBar extends StatefulWidget {
  @override
  State<Homepage_AnimatedBottomBar> createState() => _Homepage_AnimatedBottomBarState();
}

class _Homepage_AnimatedBottomBarState extends State<Homepage_AnimatedBottomBar> {
  int currentindex = 0;

  final screens=[
   HomeScreen_AnimatedBottomBar(),
    FavoriteScreen(),
    ProductScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        //backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Bottombar Demo ANIMATED'),
          actions: [IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.logout))],
        ),
        body: IndexedStack(
          children: screens,
          index: currentindex,
        ),

        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.black,
          color: Colors.blue,

          height: 60.0,

          onTap: (index){
            setState(() {
              currentindex=index;
            });
          },
          //animationDuration: Duration(microseconds: 400),
          items: [
            Icon(Icons.home,size: 30.0,color: Colors.red, ),
            Icon(Icons.favorite,size: 30.0,color: Colors.green,),
            Icon(Icons.shopping_cart,size: 30.0,color: Colors.orange,),

          ],
        ),


      ),
    );
  }
}
