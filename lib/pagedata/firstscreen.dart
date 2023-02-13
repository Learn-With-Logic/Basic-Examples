import 'package:flutter/material.dart';
import 'ListTileWidget.dart';
import 'homescreen.dart';
import 'model.dart';

class FirstScreen extends StatefulWidget {

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  User currentuser=userlist[0];

  TextStyle kTextStyle=TextStyle(fontSize: 30.0,color: Colors.blue,fontWeight: FontWeight.bold);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Page data'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
              child: ListTileWidget(user: currentuser, onclick: (){})),

          SizedBox(height: 30,),

          TextButton(
            onPressed: () async {
              final result=await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=>HomeScreen_Pagedata()));

              if(result!=null)
                {
                  setState((){
                    currentuser=result;
                  });
                }
            },
            child: Text('Select User'),),



        ],

      ),


    );
  }
}
