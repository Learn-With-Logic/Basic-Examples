import 'dart:ffi';


import 'package:demos/drawer/profilepage.dart';
import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

class MyCustomDrawer extends StatefulWidget {
  const MyCustomDrawer({Key? key}) : super(key: key);

  @override
  State<MyCustomDrawer> createState() => _MyCustomDrawerState();
}

class _MyCustomDrawerState extends State<MyCustomDrawer> {
  final name = "Irfan Ganatra";
  final email = "learn_with_logic@yahoo.in  ";
  final imageurl = "assets/irfan.jpeg";

  Color mcolor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            buildHeader(
                name: name, email: email, imageurl: imageurl, onclick: () {}),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  ListItem(
                      icon: Icons.home,
                      txt: 'Home',
                      onclick: () {
                        selectpage(context, 0);
                      }),
                  SizedBox(height: 10,),
                  buildSearchbox(),

                  SizedBox(
                    height: 10.0,
                  ),
                  ListItem(
                      icon: Icons.shopping_cart,
                      txt: 'Shopping',
                      onclick: () {
                        selectpage(context, 1);
                      }),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListItem(
                      icon: Icons.camera,
                      txt: 'Gallary',
                      onclick: () {
                        selectpage(context, 2);
                      }),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListItem(
                      icon: Icons.email, txt: 'Send Email', onclick: () {}),
                  Divider(
                    color: Colors.white70,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListItem(
                      icon: Icons.logout,
                      txt: 'Logout',
                      onclick: () {
                        Navigator.of(context).pop();
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ListItem({
    required IconData icon,
    required String txt,
    VoidCallback? onclick,
  }) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        color: Colors.blue,
        child: ListTile(
          onTap: onclick,
          leading: Icon(
            icon,
            color: Colors.white,
          ),
          title: Text(
            txt,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }

  void selectpage(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Page1()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Page2()));
        break;

      default:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Page3()));
    }
  }

  Widget buildHeader({
    required String name,
    required String email,
    required String imageurl,
    required VoidCallback? onclick,
  }) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProfilePage(
                  imageurl: imageurl,
                )));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Row(
          children: [
            Hero(
                tag: "myhero",
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(imageurl),
                )),
            SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(email,
                    style: TextStyle(fontSize: 12.0, color: Colors.white70)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSearchbox() {
    return TextField(
      style: TextStyle(color: Colors.white),

      decoration: InputDecoration(
        hintText: 'Search here',
        prefixIcon: Icon(Icons.search,color: Colors.white,),
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.red),        ),
      ),
    );
  }
}
