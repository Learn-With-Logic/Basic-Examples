import 'package:flutter/material.dart';

import 'customfloatingbutton.dart';



class HomeScreen_BottomSheet extends StatefulWidget {
  const HomeScreen_BottomSheet({Key? key}) : super(key: key);

  @override
  State<HomeScreen_BottomSheet> createState() => _HomeScreen_BottomSheetState();
}

class _HomeScreen_BottomSheetState extends State<HomeScreen_BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet Demo'),

      ),
      body: Center(child: Text('hello'),),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Hoe'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black,),label: 'Fav'),
          BottomNavigationBarItem(icon: Icon(Icons.share,color: Colors.black,),label: 'Share'),
          BottomNavigationBarItem(icon: Icon(Icons.logout,color: Colors.black,),label: 'Logout'),
        ],
      ),
      floatingActionButton: CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
