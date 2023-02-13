import 'package:flutter/material.dart';

class HomeScreen_BottomBar2 extends StatefulWidget {
  const HomeScreen_BottomBar2({Key? key}) : super(key: key);

  @override
  State<HomeScreen_BottomBar2> createState() => _HomeScreen_BottomBar2State();
}

class _HomeScreen_BottomBar2State extends State<HomeScreen_BottomBar2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: FloatingActionButton(
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.video_camera_back),
        elevation: 4.0,
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: IconButton(icon: Icon(Icons.home), onPressed: () {}),
            ),
            Expanded(
              child: IconButton(icon: Icon(Icons.show_chart), onPressed: () {}),
            ),
            Expanded(child: new Text('')),
            Expanded(
              child: IconButton(icon: Icon(Icons.tab), onPressed: () {}),
            ),
            Expanded(
              child: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
