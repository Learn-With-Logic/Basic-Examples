import 'package:demos/drawer/profilepage.dart';
import 'package:flutter/material.dart';

import 'mycustomdrawer.dart';

class HomeScreen_Drawer extends StatelessWidget {
  const HomeScreen_Drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.logout))],
        title: Text('Drawer Demo',style: TextStyle(fontSize: 30.0,color: Colors.white),),),
      drawer: MyCustomDrawer(),
      body: Text('hello'),
    );
  }
}
