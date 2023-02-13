import 'package:flutter/material.dart';

import 'chartwidget.dart';

class HomeScreen_FlChart extends StatefulWidget {
  const HomeScreen_FlChart({Key? key}) : super(key: key);

  @override
  State<HomeScreen_FlChart> createState() => _HomeScreen_FlChartState();
}

class _HomeScreen_FlChartState extends State<HomeScreen_FlChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.logout))]
      ),
      body: SafeArea(
        child: Center(
          child: ChartWidget(mapdata: {
            'food':100.00,
            'travel':400.00,
            'shopping':800.00,
          },),
        ),
      ),
    );
  }
}
