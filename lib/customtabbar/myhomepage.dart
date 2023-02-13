import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CategoryCardwidget.dart';
import 'categorymodel.dart';

class HomeScreen_CustomTabBar extends StatefulWidget {
  HomeScreen_CustomTabBar({super.key});

  @override
  State<HomeScreen_CustomTabBar> createState() => _HomeScreen_CustomTabBarState();
}

class _HomeScreen_CustomTabBarState extends State<HomeScreen_CustomTabBar> {
  // List of models
  final categoryCardModelList = <CategoryCardModel>[
    CategoryCardModel("Todas"),
    CategoryCardModel("Smartphones"),
    CategoryCardModel("Accesorios para celular"),
    CategoryCardModel("TV")
  ];

  List<CategoryCardModel>? _categoryCardModelListOf;
  CategoryCardModel? selectedcategory;


  @override
  void initState() {
    super.initState();
    setState(() {
      _categoryCardModelListOf = List.of(categoryCardModelList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Column(children: [
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.fromLTRB(40.0, 40.0, 70.0, 100.0),
              child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _categoryCardModelListOf!
                      .map<Widget>((categoryCardModel) => CategoryCard(
                      wasPressed: () {
                        print("Hello World");
                        setState(() {
                          selectedcategory=categoryCardModel;
                        });
                      },
                      isselected: selectedcategory==categoryCardModel,
                      categoryCardName:
                      categoryCardModel.categoryCardModelName))
                      .toList())),

          selectedcategory!=null?
          Text('Selected one is:'+ selectedcategory!.categoryCardModelName.toString() ):
          Text('Select Any Category'),
        ],));
  }
}