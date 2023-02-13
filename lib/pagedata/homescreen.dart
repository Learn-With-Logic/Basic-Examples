import 'package:flutter/material.dart';
import 'ListTileWidget.dart';
import 'model.dart';

class HomeScreen_Pagedata extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select User'),),
      body: ListView.builder(
          itemCount: userlist.length,
          itemBuilder: (context,index)
          {
            return MyListTile(userlist[index],context);
          })


    );
  }

  Widget MyListTile(User user,BuildContext context) {
    return ListTileWidget(user: user,onclick: (){

        Navigator.of(context).pop(user);


    },);

  }
}
