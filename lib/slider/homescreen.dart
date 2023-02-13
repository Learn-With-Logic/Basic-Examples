import 'package:flutter/material.dart';


class HomeScreen_Slider extends StatefulWidget {

  @override
  State<HomeScreen_Slider> createState() => _HomeScreen_SliderState();
}

class _HomeScreen_SliderState extends State<HomeScreen_Slider> {
  int red=0;
  int green=0;
  int blue=0;
  Color color=Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: Text('Color exampl'),),
      body: Column(
        children: [
          Container(child: Row(
            children: [
              CircleAvatar(child: Text(red.toString()),),
              Expanded(
                child: Slider(
                  max: 255,
                  min: 0,
                  value:red.toDouble(),
                  onChanged: (x){
                    red=x.toInt();
                    setState(() {
                      color=Color.fromRGBO(red, green, blue, 1);
                    });
                  },
                ),
              ),
            ],
          ),),

          Container(child: Row(
            children: [
              CircleAvatar(child: Text(green.toString()),),
              Expanded(
                child: Slider(
                  max: 255,
                  min: 0,
                  value:green.toDouble(),
                  onChanged: (x){
                    green=x.toInt();
                    setState(() {
                      color=Color.fromRGBO(red, green, blue, 1);
                    });
                  },

                ),
              ),
            ],
          ),),
          Container(child: Row(
            children: [
              CircleAvatar(child: Text(blue.toString()),),
              Expanded(
                child: Slider(
                  max: 255,
                  min: 0,
                  value:blue.toDouble(),
                  onChanged: (x){
                    blue=x.toInt();
                    setState(() {
                      color=Color.fromRGBO(red, green, blue, 1);

                    });
                  },

                ),
              ),
            ],
          ),),



        ],
      ),
    );
  }
}
