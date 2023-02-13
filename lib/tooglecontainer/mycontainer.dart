import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final VoidCallback ontap;
  final bool isselected;


  MyContainer({required this.ontap,required this.isselected});

  @override
  Widget build(BuildContext context) {
    print('I am printed');
    return Padding(
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20),
            border:isselected==true? Border.all(width: 2,color: Colors.blue):null,
          ),
        ),
      ),
    );
  }
}
