import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String imageurl;


  ProfilePage({required this.imageurl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("User Photo"),),
      body: Hero(tag:"myhero",child: Image.asset(imageurl)),
    );
  }
}
