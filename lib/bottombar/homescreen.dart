import 'dart:math';

import 'package:flutter/material.dart';
const kstyle=TextStyle(fontSize: 30,color: Colors.blue,fontWeight: FontWeight.bold);



class HomeScreen_Bottombar extends StatefulWidget {
  const HomeScreen_Bottombar({Key? key}) : super(key: key);

  @override
  State<HomeScreen_Bottombar> createState() => _HomeScreen_BottombarState();
}

class _HomeScreen_BottombarState extends State<HomeScreen_Bottombar> {

  int selectedindex=0;

  final screens=[
    HomeScreen(),
    ShopScreen(),
  ];



  List<BottomNavigationBarItem> items=[
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.red),
    BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'Shop',backgroundColor: Colors.green),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: selectedindex,
      ),

      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        //backgroundColor: Colors.orange,
        //type: BottomNavigationBarType.shifting,
        currentIndex: selectedindex,
        items: items,
        onTap: (index)=>setState(() {
          selectedindex=index;
        }),

      ),
    );
  }


}



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen'),),
      body: Center(
        child: Text(
          'Home Screen',
              style: TextStyle(color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1)),
        ),
      ),
    );
  }
}


class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  int age=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Shop Screen'),),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              age++;
            });
          },
          child: Icon(Icons.add),
        ),

        body: Center(child: Text('Counter :$age')));
  }
}
