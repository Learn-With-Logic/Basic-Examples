import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:sticky_headers/sticky_headers.dart';

class HomeScreen_StickyHeader extends StatefulWidget {
  const HomeScreen_StickyHeader({Key? key}) : super(key: key);

  @override
  State<HomeScreen_StickyHeader> createState() =>
      _HomeScreen_StickyHeaderState();
}

class _HomeScreen_StickyHeaderState extends State<HomeScreen_StickyHeader> {
  TextStyle kstyl1 =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue);

  List<Map<String, dynamic>> players = [
    {'Country': 'India', 'name': 'Rahul'},
    {'Country': 'Pakistan', 'name': 'Wasim'},
    {'Country': 'India', 'name': 'Rohit'},
    {'Country': 'Australia', 'name': 'Maxwell'},
    {'Country': 'India', 'name': 'Kohli'},
    {'Country': 'India', 'name': 'Kapil'},
    {'Country': 'Australia', 'name': 'Ricky'},
    {'Country': 'India', 'name': 'Jadeja'},
    {'Country': 'Australia', 'name': 'henze'},
    {'Country': 'Australia', 'name': 'Lee'},
    {'Country': 'India', 'name': 'Azharuddin'},
    {'Country': 'Pakistan', 'name': 'Wasim'},
    {'Country': 'India', 'name': 'ChetanSharma'},
    {'Country': 'Australia', 'name': 'Maxwell'},
    {'Country': 'India', 'name': 'Mongia'},
    {'Country': 'India', 'name': 'Yuvraj'},
    {'Country': 'Australia', 'name': 'Ricky'},
    {'Country': 'India', 'name': 'Roni'},
    {'Country': 'India', 'name': 'Ravi Shashtri'},
    {'Country': 'Pakistan', 'name': 'Wasim'},
    {'Country': 'India', 'name': 'Vengeskar'},
    {'Country': 'India', 'name': 'Gavaskar'},
    {'Country': 'India', 'name': 'Kapil'},
    {'Country': 'India', 'name': 'Sachin'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout))
      ]),
      body: SafeArea(child:showGroupedData()),
    );
  }

  showGroupedData() {
    return GroupedListView<dynamic, String>(
      useStickyGroupSeparators: true,
      itemComparator: (a, b) => a['name'].compareTo(b['name']),
      elements: players,
      itemBuilder: (context, element) {
        return Card(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                color: Colors.grey,
                child: Center(child: Text(element['name']))));
      },
      groupBy: (element) => element['Country'],
      groupHeaderBuilder: (value) => Container(
          padding: EdgeInsets.all(20),
          color: Colors.blue,
          child: Text(value['Country'])),
    );
  }


}
