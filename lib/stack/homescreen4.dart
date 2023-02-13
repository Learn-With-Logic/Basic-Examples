import 'package:flutter/material.dart';

const decoration=BoxDecoration(
  shape: BoxShape.circle,
  color: Colors.blue,


);

class HomeScreen4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.grey,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -50,
                left: -50,
                child: Container(
                  decoration: decoration,
                  height: 100,
                  width: 100,
                ),
              ),
              Positioned(
                top: -50,
                right: -50,
                child: Container(
                  decoration: decoration,
                  height: 100,
                  width: 100,
                ),
              ),
              Positioned(
                bottom: -50,
                left: -50,
                child: Container(
                  decoration:decoration ,
                  height: 100,
                  width: 100,
                ),
              ),
              Positioned(
                bottom: -50,
                right: -50,
                child: Container(
                  decoration: decoration,
                  height: 100,
                  width: 100,
                ),
              ),

              Container(
                decoration: decoration,
                height: 100,width: 100,
              )




            ],
          ),
        ),
      ),
    );
  }
}
