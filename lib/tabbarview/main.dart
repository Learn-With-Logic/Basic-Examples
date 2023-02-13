import 'package:flutter/material.dart';

import 'categoryscreen.dart';
import 'favouritescreen.dart';


class HomeScreen_TabbarView extends StatefulWidget {
  @override
  State<HomeScreen_TabbarView> createState() => _HomeScreen_TabbarViewState();
}

class _HomeScreen_TabbarViewState extends State<HomeScreen_TabbarView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1,
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text('DefaultTab view'),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.category),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite),
                  ),
                ],
              ),
            ),
            body: TabBarView(children: [
              CategoryScreen(),
              FavouriteScreen(),
            ],),
          )),
    );
  }
}
