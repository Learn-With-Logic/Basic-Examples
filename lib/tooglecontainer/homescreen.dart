import 'package:flutter/material.dart';

import 'mycontainer.dart';

class HomeScreen_ToggleContainer extends StatefulWidget {
  @override
  State<HomeScreen_ToggleContainer> createState() => _HomeScreen_ToggleContainerState();
}
int? selectedindex;

class _HomeScreen_ToggleContainerState extends State<HomeScreen_ToggleContainer> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(child: MyContainer(
                isselected: selectedindex==0?true:false,
                ontap: (){
                  selectedindex=0;
                  setState(() {

                  });
                },

              ),),
              Expanded(child: MyContainer(
                isselected: selectedindex==1?true:false,
                ontap: (){
                  selectedindex=1;
                  setState(() {

                  });
                },

              ),),
            ],
          )),
          Expanded(child: MyContainer(
            isselected: selectedindex==2?true:false,
            ontap: (){
              selectedindex=2;
              setState(() {

              });
            },

          ),),
          Expanded(
              child: Row(
            children: [
              Expanded(child: MyContainer(
                isselected: selectedindex==3?true:false,
                ontap: (){
                  selectedindex=3;
                  setState(() {

                  });
                },

              ),),
              Expanded(child: MyContainer(
                isselected: selectedindex==4?true:false,
                ontap: (){
                  selectedindex=4;
                  setState(() {
                  });
                },

              ),),
            ],
          )),
        ],
      ),
    );
  }
}
