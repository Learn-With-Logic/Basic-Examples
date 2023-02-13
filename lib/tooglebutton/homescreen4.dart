
import 'package:flutter/material.dart';

class HomeScreen4 extends StatefulWidget {

  @override
  State<HomeScreen4> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen4> {
  @override

  List <bool> isselected=[true,false,false];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Multiple but not required'),),
      body: MyBody(),
    );

  }

  Widget MyBody() {
    return Center(
      child: ToggleButtons(
        selectedColor: Colors.cyan,

        onPressed: (index){
          isselected[index]=!isselected[index];
          setState(() {

          });
        },
          isSelected: isselected,
        children: [
          Text('Red'),
          Text('Green'),
          Text('Blue'),
          
        ],


      ),
    );



  }
}
