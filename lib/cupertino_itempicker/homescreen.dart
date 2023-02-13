import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen_CupertinoItemPicker extends StatefulWidget {
  @override
  State<HomeScreen_CupertinoItemPicker> createState() => _HomeScreen_CupertinoItemPickerState();
}

class _HomeScreen_CupertinoItemPickerState extends State<HomeScreen_CupertinoItemPicker> {
  int ?selecteditem=0;
  Color ?color;

  final items=[
    'Red',
    'Green',
    'Blue',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: selecteditem==0?color=Colors.red:selecteditem==1?color=Colors.green:color=Colors.blue,
      appBar: AppBar(
        title: Text('Cupertino Item Picker'),
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Selected :'+items[selecteditem!].toString()),
          SizedBox(
            height: 200.0,

            child: Container(
              alignment: Alignment.center,
              //padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: CupertinoPicker(
                looping: true,
                onSelectedItemChanged: (index){
                  selecteditem=index;
                  setState(() {

                  });
                },

                itemExtent: 50,
                children: items.map(createitem).toList(),

              ),
            ),
          )
        ],
      ),
    );
  }



  Widget createitem(String e) {
    return Center(child: Text(e.toString()),);
  }

  void setcolor() {
    selecteditem==0?color=Colors.red:selecteditem==1?color=Colors.green:color=Colors.blue;
  }
}
