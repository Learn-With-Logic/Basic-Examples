import 'dart:math';

import 'package:demos/Neumorph/homescreen.dart';
import 'package:demos/alertdialog/homescreen.dart';
import 'package:demos/animatedbottombar/homepage.dart';
import 'package:demos/animatedlistview/homepage.dart';
import 'package:demos/bottombar/homescreen.dart';
import 'package:demos/bottomsheet/HomeScreen_Bottomsheet.dart';
import 'package:demos/card/HomeScreen.dart';
import 'package:demos/chartbar/homescreen.dart';
import 'package:demos/checkbox/homescreen.dart';
import 'package:demos/confetti/main.dart';
import 'package:demos/cupertino_itempicker/homescreen.dart';
import 'package:demos/customtabbar/myhomepage.dart';
import 'package:demos/defaulttabbar/main.dart';
import 'package:demos/drawer/homescreen.dart';
import 'package:demos/dropdown/homescreen.dart';
import 'package:demos/dropdown2/homescreen.dart';
import 'package:demos/expansionpanel/homescreen.dart';
import 'package:demos/fab/homescreen.dart';
import 'package:demos/flchart/homescreen.dart';
import 'package:demos/multiselectlistviewitem/homescreen.dart';
import 'package:demos/pagedata/homescreen.dart';
import 'package:demos/showdialogs/homescreen.dart';
import 'package:demos/slider/homescreen.dart';
import 'package:demos/slidingsegment/homescreen.dart';
import 'package:demos/sliverappbar/homescreen.dart';
import 'package:demos/stack/homescreen.dart';
import 'package:demos/staggered/homescreen.dart';
import 'package:demos/stickeyheader/homescreen.dart';
import 'package:demos/switchwidget/homescreen.dart';
import 'package:demos/tabbar/homescreen.dart';
import 'package:demos/tooglebutton/menupage.dart';
import 'package:demos/tooglecontainer/homescreen.dart';
import 'package:demos/willpop/homescreen.dart';
import 'package:flutter/material.dart';

import 'bottombar2/homescreen_bottombar2.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  final screens=[
    {
      'name':'DialogBoxes',
      'screen':HomeScreen_showdialogs(),
    },

    {
      'name':'Animatedlistview',
      'screen':HomePage_Animatedlistview(),
    },
    {
      'name':'AnimatedBottomBar',
      'screen':Homepage_AnimatedBottomBar(),
    },
    {
      'name':'BottomBar',
      'screen':HomeScreen_Bottombar(),
    },
    {
      'name':'BottomBar2',
      'screen':HomeScreen_BottomBar2(),
    },


    {
      'name':'Card',
      'screen':HomeScreen_Card(),
    },
    {
      'name':'CheckBox',
      'screen':HomeScreen_CheckBox(),
    },
    {
      'name':'Alert Dialog Validation',
      'screen':HomeScreen_Alertdialog(),
    },
    {
      'name':'Cupertino Item Picker',
      'screen':HomeScreen_CupertinoItemPicker(),
    },
    {
      'name':'Drawer',
      'screen':HomeScreen_Drawer(),
    },
    {
      'name':'DropDown',
      'screen':HomeScreen_Dropdown(),
    },

    {
      'name':'DropDown2',
      'screen':HomeScreen_DropDown2(),
    },

    {
      'name':'StickyHeader',
      'screen':HomeScreen_StickyHeader(),
    },

    {
      'name':'MultiSelectListViewItem',
      'screen':Homescreen_MultiSelectListviewItem(),
    },
    {
      'name':'Neumorphism',
      'screen':HomeScreen_Neumorph(),
    },
    {
      'name':'Slider',
      'screen':HomeScreen_Slider(),
    },
    {
      'name':'SlidingSegment',
      'screen':HomeScreen_SlidingSegment(),
    },
    {
      'name':'SliverAppBar',
      'screen':HomeScreen_SliverAppbar(),
    },
    {
      'name':'Stack',
      'screen':HomeScreen_Stack(),
    },

    {
      'name':'SwitchWidget',
      'screen':HomeScreen_Switch(),
    },

    {
      'name':'TabBar',
      'screen':HomeScreen_Tabbar(),
    },
    {
      'name':'Tooggle button',
      'screen':HomeScreen_ToogleButton(),
    },
    {
      'name':'WillPop',
      'screen':HomeScreen_WillPop(),
    },

    {
      'name':'CustomTabBar',
      'screen':HomeScreen_CustomTabBar(),
    },
    {
      'name':'Fl Chart',
      'screen':HomeScreen_FlChart(),
    },
    {
      'name':'Chart Bar',
      'screen':HomeScreen_ChartBar(),
    },
    {
      'name':'Confetti',
      'screen':HomeScreen_Confetti(),
    },
    {
      'name':'ToogleContainer',
      'screen':HomeScreen_ToggleContainer(),
    },
    {
      'name':'ExpansionPanel',
      'screen':HomeScreen_ExpansionPanel(),
    },
    {
      'name':'Fab',
      'screen':HomeScreen_Fab(),
    },
    {
      'name':'Default TabBar',
      'screen':HomeScreen_DefaultTabbar(),
    },

    {
      'name':'BottomSheet',
      'screen':HomeScreen_BottomSheet(),
    }

  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            height: 50,
            color: Colors.blue.shade900,
            child: Center(child: Text('Select Demo Example',style: TextStyle(
              fontWeight: FontWeight.bold,color: Colors.white,fontSize: 24
            ),)),
          ),
          SizedBox(height: 20,),
          Expanded(child: ListView.builder(
              itemCount: screens.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: ListTile(
                        leading: CircleAvatar(

                          child: Text(
                            (index+1).toString()
                        ),),

                        title: Text(screens[index]['name'].toString(),style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold
                        ),),
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return screens[index]['screen'] as Widget;

                          }));
                        },
                      ),
                    ),
                  ),
                );
              }))
        ],)
      ),
    );
  }
}
