import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final kTextStyle=TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,);
  List <bool> isselected=[true,false,false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Single Selection'),),
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
                        isselected[x]=true;

                      else

                          isselected[x]=false;


                    }


                });

              },
                children: [
                  Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Red',style: kTextStyle,),
                ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Green',style: kTextStyle,),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Blue',style: kTextStyle,),
                  ),
                ],
               ),
          ),
        ],
      ),
    );

  }
}
