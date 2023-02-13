import 'package:flutter/material.dart';
import 'redpage.dart';

class HomeScreen_WillPop extends StatefulWidget {
  const HomeScreen_WillPop({Key? key}) : super(key: key);

  @override
  State<HomeScreen_WillPop> createState() => _HomeScreen_WillPopState();
}

class _HomeScreen_WillPopState extends State<HomeScreen_WillPop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(child: Text('Page to Red'), onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RedPage()));
          }),

          ],
        ),
      ),
    );
  }
}
