import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('I am chat Screen'),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.blue,
        child: Text('Nothing'),
      ),
    );
  }
}
