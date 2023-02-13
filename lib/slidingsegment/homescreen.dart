import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen_SlidingSegment extends StatefulWidget {
  @override
  State<HomeScreen_SlidingSegment> createState() => _HomeScreen_SlidingSegmentState();
}

class _HomeScreen_SlidingSegmentState extends State<HomeScreen_SlidingSegment> {
  int ?selectedvalue=1;
  Color color=Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: Text("Demo Sliding Segment"),
      ),
      body: Center(
        child: Container(
          height: 70.0,
          child: CupertinoSlidingSegmentedControl<int>(
            backgroundColor: Colors.white,
            thumbColor: selectedvalue==0?Colors.red:selectedvalue==1?Colors.green:Colors.blue,

            groupValue: selectedvalue,
            onValueChanged: (value){
              selectedvalue=value;
              setState(() {
                print(selectedvalue.toString());
                changecolor();
              });
            },
            children:  {
              0: buildSegment('Red'),
              1: buildSegment('Green'),
              2: buildSegment('Blue'),
            },
          ),
        ),
      ),
    );
  }

  Widget buildSegment(String s) {

    return Text(s.toString(),style: TextStyle(fontWeight: FontWeight.bold,
    fontSize: 30.0,color: Colors.orange),);
  }

  void changecolor() {

    switch(selectedvalue)
    {
      case 0:
        {
          color = Colors.red;
          break;
        }
      case 1:
        {
          color = Colors.green;
          break;
        }
      case 2:
        {
          color = Colors.blue;
          break;
        }
    }
  }
}
