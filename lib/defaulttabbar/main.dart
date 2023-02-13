import 'package:flutter/material.dart';

import '../tabbarview/categoryscreen.dart';
import '../tabbarview/favouritescreen.dart';


class HomeScreen_DefaultTabbar extends StatefulWidget {
  @override
  State<HomeScreen_DefaultTabbar> createState() => _HomeScreen_DefaultTabbarState();
}

class _HomeScreen_DefaultTabbarState extends State<HomeScreen_DefaultTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
          ),
    );
  }
}
