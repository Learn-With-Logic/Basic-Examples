import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryCard extends StatelessWidget {
  final String? categoryCardName;
  final Function()? wasPressed;
  final bool? isselected;

  const CategoryCard({
    super.key,
    required this.categoryCardName,
    this.wasPressed,
    this.isselected=false
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: wasPressed,
      child: IntrinsicWidth(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: [
            Card(
              shape: RoundedRectangleBorder(
                side:  BorderSide(
                  color:isselected==true?Colors.red: Color.fromRGBO(212, 213, 215, 100),
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(242, 243, 243, 100),
                    borderRadius: BorderRadius.circular(20.0)),
                padding: const EdgeInsets.all(10),
                child: Text(
                  categoryCardName ?? 'Todas',
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(91, 94, 99, 100)),
                ),
              ),
            ),
            if(isselected==true)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                      color: Colors.red[200],
                height: 5,
            ),
              ),
          ],),
        ),
      ),
    );
  }
}