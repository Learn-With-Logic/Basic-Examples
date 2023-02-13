import 'package:flutter/material.dart';

class MyBar extends StatelessWidget {
  final int value;

  MyBar({required this.value});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
          height: 200,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(20),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: value/100,
            widthFactor: 0.70,
            child: Container(
              decoration: BoxDecoration(
                color:Colors.blue,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(child: Text(value.toString(),style: TextStyle(color: Colors.white),)),
            ),
          )
      ),
    );
  }
}
