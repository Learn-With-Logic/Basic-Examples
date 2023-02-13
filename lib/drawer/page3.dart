
import 'package:flutter/material.dart';

import 'mycustomdrawer.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyCustomDrawer(),
      appBar: AppBar(title: Text('Page3'),),
      body: Container(
        color: Colors.blue,
        child: Text("Page3"),

      ),
    );
  }
}
