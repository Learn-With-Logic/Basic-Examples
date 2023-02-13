import 'package:flutter/material.dart';

class HomeScreen3 extends StatefulWidget {

  @override
  State<HomeScreen3> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen3> {
  List <bool> isselected=[true,false,false];
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Multiple and required'),),
      body: MyBody(),
    );

  }

  Widget MyBody() {
    return Center(
      child: ToggleButtons(
        selectedColor: Colors.cyan,
        borderWidth: 5.0,
        //borderColor: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
        onPressed: (index){
          setState(() {

            bool isoneselected=isselected.where((element) => element).length==1;

            if(isoneselected==true && isselected[index]==true)
               return;

            isselected[index]=!isselected[index];










            //mylogic(index);











          });
        },
        isSelected:isselected,

        children: [
          Icon(Icons.add),
      Text('Any'),
      Icon(Icons.delete),],


      ),
    );

  }

  int totalselected() {

    int counter=0;
    for(int x=0;x<isselected.length;x++)
      {
        if(isselected[x]==true)
           counter++;
      }


    print(counter);
    return counter;

  }

  void mylogic(int index) {

    for(int x=0;x<isselected.length;x++)
    {
      if(x==index)
      {
        if(totalselected()>1)
        {
          isselected[x]=!isselected[x];
        }
        else
        {
          isselected[x]=true;
        }
      }

    }
  }


}
