import 'package:demos/tabbar/statusscreen.dart';
import 'package:flutter/material.dart';

import 'calllogscreen.dart';
import 'chatscreen.dart';

class HomeScreen_Tabbar extends StatefulWidget {

  @override
  State<HomeScreen_Tabbar> createState() => _HomeScreen_TabbarState();
}

class _HomeScreen_TabbarState extends State<HomeScreen_Tabbar>
    with SingleTickerProviderStateMixin {

  late TabController _controller;


  List<Tab> tabs = [
    Tab(text: 'Chat'),
    Tab(text: 'Status',),
    Tab(text: 'Calls',),
  ];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);

    _controller.addListener(() {
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_controller.index.toString()),
        bottom: TabBar(
          indicatorColor: Colors.blue,
          indicatorWeight: 2.0,
          controller: _controller,
          tabs: tabs,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,

        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],

      ),
      body: TabBarView(
          controller: _controller,
          children: [
            ChatScreen(),
           StatusScreen(),
            CallLogScreen(),

          ]),

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            _controller.animateTo(2);
          },
          child: Icon(Icons.add),
    ),

    );
  }
}
