import 'package:flutter/material.dart';

class HomeScreen_DropDown2 extends StatefulWidget {
  @override
  State<HomeScreen_DropDown2> createState() => _HomeScreen_DropDown2State();
}

class _HomeScreen_DropDown2State extends State<HomeScreen_DropDown2> {
  List<int> items = [];
  int? selecteditem=10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int x=10;x<=100;x=x+5)
      {
        items.add(x);
      }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Demo'),
      ),
      body:Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey,
              width: double.infinity,
              child: Text("This is a demo Page",style: TextStyle(fontSize: selecteditem!.toDouble())),
            ),
          ),
          DropdownButton<int>(
            value: selecteditem,
            items: items.map(generateitems).toList(),
            onChanged: (value) {

              selecteditem=value;
              setState(() {

              });
            },
          )
        ],
      ),
    );
  }

  DropdownMenuItem<int> generateitems(int e) {

    return DropdownMenuItem(
        value: e,
        child: Text(e.toString()));
  }
}
