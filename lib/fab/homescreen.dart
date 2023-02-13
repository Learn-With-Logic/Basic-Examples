import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomeScreen_Fab extends StatefulWidget {

  @override
  State<HomeScreen_Fab> createState() => _HomeScreen_FabState();
}

class _HomeScreen_FabState extends State<HomeScreen_Fab> {

  Color mycolor=Colors.orangeAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolor,
      appBar: AppBar(title: Text('Demo Page'),),
      body: MyBody(),
      floatingActionButton:SpeedDial(
        onClose: (){},
        onOpen: (){

        },
        spacing: 12,
        spaceBetweenChildren: 12,
        closeManually: false,
        elevation: 0,


        overlayColor: Colors.blue,
        overlayOpacity: 0.3,
        animatedIcon:AnimatedIcons.menu_close,
        //icon: Icons.add,
        children: [
          SpeedDialChild(
            elevation: 0,
            onTap: (){
              mycolor=Colors.redAccent;
              setState(() {


              });
            },
            backgroundColor: Colors.red,
            child: Icon(Icons.shopping_cart),
            label: 'Shop',
      ),
          SpeedDialChild(
            onTap: (){
              setState(() {


              });
              mycolor=Colors.greenAccent;
            },
            backgroundColor: Colors.green,
            child: Icon(Icons.add),
            label: 'Add Item',
          ),
        ],
      ) ,
    );

  }

  Widget MyBody() {
    return Text('hello');

  }
}
