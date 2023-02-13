import 'package:flutter/material.dart';

class HomeScreen_Card extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Samples'),),
      body: Column(children: [
        buildsimplecard(),
        buildmultycolorcard(),
      ],),
    );
  }

  Widget buildsimplecard() {

    return Card(

      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Title Text'),
          Text('Description Text for subject related'),
        ],),
      ),
    );
  }

  Widget buildmultycolorcard() {

    return Card(
      clipBehavior: Clip.antiAlias,
      shadowColor: Colors.red,


      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),),
      child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red,Colors.blue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Title Text',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                Text('Description Text for subject related',style: TextStyle(color: Colors.white)),
              ],),
          ),
        ),

    );
  }


}
