import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _currentSliderValue=15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            IconButton(onPressed: (){
              setState(() {
                if(_currentSliderValue<100)
                _currentSliderValue=_currentSliderValue+1;

              });

            }, icon: Icon(Icons.add)),
            Text(_currentSliderValue.round().toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            IconButton(onPressed: (){
              setState(() {
                if(_currentSliderValue>1)
                _currentSliderValue=_currentSliderValue-1;

              });
            }, icon: Icon(Icons.remove)),

          ],),
          Slider(
            value: _currentSliderValue,
            max: 100,
            divisions: 100,
            //label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),



        ],)
      ),
    );
  }
}
