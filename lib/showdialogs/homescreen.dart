
import 'package:demos/showdialogs/simpledialog.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'aboutdialogwidget.dart';
import 'alertdialogwidget.dart';
import 'customdialogwidget.dart';

class HomeScreen_showdialogs extends StatefulWidget {

  @override
  State<HomeScreen_showdialogs> createState() => _HomeScreen_showdialogsState();
}

class _HomeScreen_showdialogsState extends State<HomeScreen_showdialogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo Page'),),
      body: MyBody(),
    );
  }

  Widget MyBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SimpleDialogWidget(),
          AlertDialogWidget(),
          CustomDialogWidget(),
          AboutDialogWidget(),
          TextButton(onPressed: () {

          }, child: Text('Exit'),)


        ],
      ),
    );
  }

  Exitapp()
  {
    Future.delayed(const Duration(milliseconds: 1000), () {
      exit(0);
    }
    );
  }

}
