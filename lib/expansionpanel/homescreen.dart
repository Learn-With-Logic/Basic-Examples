
import 'package:flutter/material.dart';

import 'notes.dart';


class HomeScreen_ExpansionPanel extends StatefulWidget {
  @override
  State<HomeScreen_ExpansionPanel> createState() => _HomeScreen_ExpansionPanelState();
}

class _HomeScreen_ExpansionPanelState extends State<HomeScreen_ExpansionPanel> {
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text("Demo of Expansion"),
        ),

        body: SingleChildScrollView(
          child: ExpansionPanelList.radio(
            children: showList(),

          )

          ),
      );
  }

  List<ExpansionPanel> showList()
  {

    //for multiple open
    // change value with isexpanded true of false and remove panel
    return Notes.notes.map((e) =>ExpansionPanelRadio(
      canTapOnHeader: true,
      value: e.title,//should b unique
      headerBuilder: (context,isExpanded)=>ListTile(
        title: Text(e.title,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
      ),
      body: Text(e.description,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),)
    ).toList();
  }


}
