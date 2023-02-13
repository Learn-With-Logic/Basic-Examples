import 'package:demos/tooglebutton/homescreen.dart';
import 'package:demos/tooglebutton/homescreen2.dart';
import 'package:demos/tooglebutton/homescreen3.dart';
import 'package:demos/tooglebutton/homescreen4.dart';
import 'package:flutter/material.dart';

class HomeScreen_ToogleButton extends StatefulWidget {


  @override
  State<HomeScreen_ToogleButton> createState() => _HomeScreen_ToogleButtonState();
}

class _HomeScreen_ToogleButtonState extends State<HomeScreen_ToogleButton> {
   final kTextStyle=TextStyle(fontSize: 20.0,color: Colors.black,fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Category',style:kTextStyle.copyWith(color: Colors.white),),),
      body: MyBody(),
    );

  }

  Widget MyBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            minWidth:  MediaQuery.of(context).size.width*.90,
            height: 50,
              color: Colors.red,



              child:Text("Single  Selection",style: kTextStyle,),
          onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));


          }),

          SizedBox(height: 20.0,),

          TextButton(

              child:Text("Single Not Required",style: kTextStyle,),
              onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen2()));

              }),

          SizedBox(height: 20.0,),


          ElevatedButton(

              child:Text("Multiple Required",style: kTextStyle,),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen3()));

              }),

          SizedBox(height: 20.0,),

          TextButton(

              child:Text("MultiSelect Not required",style: kTextStyle,),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen4()));

              }),

        ],
      ),
    );

  }
}
