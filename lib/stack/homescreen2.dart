import 'package:flutter/material.dart';


const kconstant=TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold);

class HomeScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topLeft,
            children: [
              Container(
                height:300,
                width: 300,
                color: Colors.red,
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,

                ),
              ),
              Positioned(
                bottom: 0,
                right: -20,
                child: CircleAvatar(
                  
                  child: Center(
                    child: Stack(

                      alignment: Alignment.topRight,
                      children: [
                        Icon(Icons.notifications,size: 50,),
                        CircleAvatar(radius: 5,),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),


      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Add'),
        icon: Icon((Icons.add)), onPressed: () {  },

      ),
    );
  }
}
