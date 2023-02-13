import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {



  @override
  State<HomeScreen2> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2> {
  final kTextStyle=TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,);
  List <bool> isselected=[false,false,false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Single  not required'),),
      body: MyBody(),
    );

  }

  Widget MyBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.red.withOpacity(0.6),
            child: ToggleButtons(
              splashColor: Colors.orange,
              fillColor: Colors.red,
              selectedColor: Colors.white,
              selectedBorderColor: Colors.green,
              renderBorder: false,

              color: Colors.white,
              isSelected: isselected,
              onPressed: (index){
                setState(() {

                  for(int x=0;x<isselected.length;x++)
                    {
                      if(index==x)
                        {
                          isselected[index]=!isselected[index];
                        }
                      else
                        {
                          isselected[x]=false;
                        }
                    }





                });

              },
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(Icons.shopping_cart),

                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(Icons.edit),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(Icons.delete),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }






}
