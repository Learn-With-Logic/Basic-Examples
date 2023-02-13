import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartWidget extends StatelessWidget {
  final Map<String, dynamic> mapdata;

  const ChartWidget({Key? key, required this.mapdata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: PieChart(PieChartData(
          sections: mapdata.entries
              .map((e) => PieChartSectionData(title: e.key.toString(),
          value: (e.value)))
              .toList())),
    );
  }
}
