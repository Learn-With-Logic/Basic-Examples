import 'package:flutter/material.dart';

class HomeScreen_BottomBar3 extends StatefulWidget {
  const HomeScreen_BottomBar3({Key? key}) : super(key: key);
  @override
  State<HomeScreen_BottomBar3> createState() => _HomeScreen_BottomBar3State();
}

class _HomeScreen_BottomBar3State extends State<HomeScreen_BottomBar3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Text('Bottombar 3'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        items: const[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop,
                color: Colors.grey,
              ),
              label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.feedback,
                color: Colors.grey,
              ),
              label: 'Feedback'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
              label: 'Cart'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
