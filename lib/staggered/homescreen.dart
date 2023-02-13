
import 'package:flutter/material.dart';

import 'enum.dart';
import 'gridpage.dart';

class HomeScreen_Staggered extends StatefulWidget {

  @override
  State<HomeScreen_Staggered> createState() => _HomeScreen_StaggeredState();
}

class _HomeScreen_StaggeredState extends State<HomeScreen_Staggered> {

  List<String> gridtitle=['Straggered','Masonry','Quilted','Woven','Staired','Aligned'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Page'),),
      body: MyBody(),
    );

  }

  Widget MyBody() {
    return ListView.builder(
        itemCount: gridtitle.length,
        itemBuilder: (context,index){
          return ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>GridPage(gridtype: GridType.values[index],
                    title: gridtitle[index],
                  )));
            },
            title: Text(gridtitle[index],style:
              TextStyle(fontSize: 24.0,color: Colors.orange),),
            trailing: Icon(Icons.arrow_right,size: 30.0,color: Colors.red,),
          );
        });

      }
}
