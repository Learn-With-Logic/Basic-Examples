import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'enum.dart';
import 'enum.dart';

class GridPage extends StatefulWidget {

  final String title;
  final GridType gridtype;



  GridPage({required this.title, required this.gridtype});


  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(title: Text(widget.title),),
      body:showGrid(),
    );
  }

  Widget showGrid() {
    switch(widget.gridtype)
    {
      case GridType.Straggered:
        return showGrid_Straggered();
      case GridType.Masonry:
        //return showGrid_Mansonry();
      case GridType.Quilted:
      //  return showGrid_Quilted();

      case GridType.Woven:
        //return showGrid_Woven();
      case GridType.Staired:
        //return showGrid_Staired();
      case GridType.Aligned:
         // return showGrid_Align();

      default:
        return showGrid_Straggered();

    }










  }

  Widget showGrid1() {
    return GridView.builder(
      itemCount: 20,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context,index){
         return Card(child: Text(index.toString(),style:
           TextStyle(fontSize: 30.0,color: Colors.red),),);

        });

  }
  Widget showGrid2() {
    return GridView.builder(
        itemCount: 40,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context,index){
          return Card(child: Text(index.toString(),style:
          TextStyle(fontSize: 30.0,color: Colors.red),),);

        });

  }

  Widget showGrid_Straggered() {
    return StaggeredGrid.count(

        crossAxisCount: 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,

            children: [
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2,
                  child: Text('0')),
    ],
    );

  }
}
