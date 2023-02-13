import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.purple,
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.shopping_cart,color: Colors.red,),
        onPressed: (){
          setState(() {
            number++;
          });
        },
      ),
      body: Center(child: Text(number.toString(),style: TextStyle(fontSize: 30.0),)),
    );
  }
}
