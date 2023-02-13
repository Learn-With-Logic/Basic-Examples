import 'package:flutter/material.dart';


class StackIcon extends StatelessWidget {
  const StackIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
          Container(
          width: 200,
          height: 200,
          child: Image.network(
              'https://images.news18.com/ibnlive/uploads/2017/11/Shah-Rukh-Khan-at-the-Millennium-Dome-London.jpg?impolicy=website&width=0&height=0',
              fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 17,
          right: 17,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
                child: Material(
                  color: Colors.white54,
                  child: Container(
                      child: IconButton(
                          onPressed: (){
                            print('i am clicked');
                          },
                      icon: Icon(Icons.zoom_out_map_outlined))),
                ),
        ))])
    ,
    );
  }
}

