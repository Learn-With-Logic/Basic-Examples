import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite,color: Colors.red,),
        onPressed: (){
          number++;
          setState(() {

          });
        },
      ),
      body: Text("Fav :"+number.toString(),style: TextStyle(fontSize: 30.0),),
    );
  }
}
